# Alien::Build::Plugin::Extract::Libarchive ![static](https://github.com/PerlAlien/Alien-Build-Plugin-Extract-Libarchive/workflows/static/badge.svg) ![linux](https://github.com/PerlAlien/Alien-Build-Plugin-Extract-Libarchive/workflows/linux/badge.svg)

Alien::Build plugin to extract a tarball using libarchive

# SYNOPSIS

```perl
use alienfile;

share {
  ...
  plugin 'Extract::Libarchive';
  ...
};
```

# DESCRIPTION

This is a [Alien::Build](https://metacpan.org/pod/Alien::Build) extract plugin that uses `libarchive` via
[Archive::Libarchive::Extract](https://metacpan.org/pod/Archive::Libarchive::Extract) and [Archive::Libarchive](https://metacpan.org/pod/Archive::Libarchive).  Its main
advantage is that it supports a wider array of archive formats than
existing plugins, and doesn't require that you specify a format.
(`libarchive` is typically smart enough to be able to detect the
format).

Its main disadvantage is extended build time, due to the number of
formats it supports it has a number of dependencies (both Perl and
external).  It should however, build on most modern systems using
[Alien](https://metacpan.org/pod/Alien) technology if the system does not provide its own `libarchive`.

# SEE ALSO

- [Alien](https://metacpan.org/pod/Alien)

    The [Alien](https://metacpan.org/pod/Alien) concept.

- [Alien::Build](https://metacpan.org/pod/Alien::Build)

    The [Alien::Build](https://metacpan.org/pod/Alien::Build) system.

- [alienfile](https://metacpan.org/pod/alienfile)

    The recipe format for [Alien::Build](https://metacpan.org/pod/Alien::Build).

- [Alien::Build::Plugin::Extract](https://metacpan.org/pod/Alien::Build::Plugin::Extract)

    Overview of [Alien::Build](https://metacpan.org/pod/Alien::Build) extract plugins.

- [Archive::Libarchive](https://metacpan.org/pod/Archive::Libarchive)

    Low level Perl interface to `libarchive` for reading and writing.

- [Archive::Libarchive::Extract](https://metacpan.org/pod/Archive::Libarchive::Extract)

    Higher level interface to extract from archives using `libarchive`.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2021-2022 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
