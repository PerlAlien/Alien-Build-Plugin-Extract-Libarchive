package Alien::Build::Plugin::Extract::Libarchive;

use strict;
use warnings;
use 5.020;
use Alien::Build::Plugin;
use Archive::Libarchive::Extract;
use experimental qw( signatures );

# ABSTRACT: Alien::Build plugin to extract a tarball using libarchive
# VERSION

=head1 SYNOPSIS

 use alienfile;

 share {
   ...
   plugin 'Extract::Libarchive';
   ...
 };

=head1 DESCRIPTION

This is a L<Alien::Build> extract plugin that uses C<libarchive> via
L<Archive::Libarchive::Extract> and L<Archive::Libarchive>.  Its main
advantage is that it supports a wider array of archive formats than
existing plugins, and doesn't require that you specify a format.
(C<libarchive> is typically smart enough to be able to detect the
format).

Its main disadvantage is extended build time, due to the number of
formats it supports it has a number of dependencies (both Perl and
external).  It should however, build on most modern systems using
L<Alien> technology if the system does not provide its own C<libarchive>.

=head1 SEE ALSO

=over 4

=item L<Alien>

The L<Alien> concept.

=item L<Alien::Build>

The L<Alien::Build> system.

=item L<alienfile>

The recipe format for L<Alien::Build>.

=item L<Alien::Build::Plugin::Extract>

Overview of L<Alien::Build> extract plugins.

=item L<Archive::Libarchive>

Low level Perl interface to C<libarchive> for reading and writing.

=item L<Archive::Libarchive::Extract>

Higher level interface to extract from archives using C<libarchive>.

=back

=cut

sub init ($self, $meta)
{
  $meta->register_hook(extract => sub ($build, $src) {
    Archive::Libarchive::Extract
      ->new( filename => $src )
      ->extract;
  });
}

1;
