#!perl

use v5.24;
use warnings;
use LWP::UserAgent;

my $ua = LWP::UserAgent->new();

# Build project list from modules script
say 'Finding projects...';
my %projects;
open(my $modules_fh, '<', 'modules.sh') or die 'Unable to open modules.sh: ' . $!;
while (<$modules_fh>) {
	if (/^  "(.*?)\/elementary\-(.*?)"/) {
		$projects{$2} = {
			latest => 'n/a',
			category => $1
		};
	}
}
close($modules_fh);

# Grab GitHub releases RSS and find the latest version
say 'Retrieving release tags for projects...';
foreach my $project (keys %projects) {
	my $url = 'https://github.com/elementary/' . $project . '/releases.atom';
	my $res = $ua->get($url);
	if ($res->is_success()) {
		my $atom = $res->decoded_content();
		my @tags = $atom =~ m/<link rel="alternate".*?releases\/tag\/(.*?)"/mg;
		my $latest = (grep(!/\-debian/, @tags))[0];
		$projects{$project}->{'latest'} = $latest if ($latest);
	} else {
		warn 'Unable to retrieve releases.atom for ' . $project . ': ' . $res->status_line();
	}
}

# Output list
say 'Projects:';
say join("\n", map {
	'  - ' . $_ . ': ' . $projects{$_}->{'latest'};
} (sort { $a cmp $b } keys %projects));

# Match up versions to existing
say '';
say 'Version matching:';
foreach my $project (sort { $a cmp $b } keys %projects) {
	my $category = $projects{$project}->{'category'};
	my $distversion;
	my $makefile = join('/', 'ports', $category, 'elementary-' . $project, 'Makefile');
	open (my $makefile_fh, '<', $makefile) or die $makefile . ': ' . $!;
	while (<$makefile_fh>) {
		if (/DISTVERSION=\s+(.*)/) {
			$distversion = $1;
		}
	}
	close($makefile_fh);
	unless ($distversion) {
		say '  - ' . $category . '/' . $project . ': No DISTVERSION found';
		next;
	}
	if ($distversion ne $projects{$project}->{'latest'}) {
		say '  - ' . $category . '/elementary-' . $project . ': DISTVERSION ' . $distversion . ' != ' . $projects{$project}->{'latest'};
	}
}

1;
