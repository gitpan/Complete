package Complete;

use 5.010001;

our $DATE = '2014-07-02'; # DATE
our $VERSION = '0.01'; # VERSION

1;
#ABSTRACT: Completion modules family

__END__

=pod

=encoding UTF-8

=head1 NAME

Complete - Completion modules family

=head1 VERSION

This document describes version 0.01 of Complete (from Perl distribution Complete), released on 2014-07-02.

=head1 DESCRIPTION

The namespace C<Complete::> is used for the family of modules that deal with
completion (including, but not limited to, shell tab completion, tab completion
feature in other CLI-based application, web autocomplete, etc).

Many of the C<Complete::*> modules (like, e.g. L<Complete::Perl>,
L<Complete::Module>, L<Complete::Unix>, L<Complete::Util>) contains
C<complete_*()> functions. These functions are generic, "low-level" completion
routines: they accept the word to be completed, zero or more other arguments,
and return an arrayref containing possible completion from a specific source.
They are not tied to any environment (shell, or web). They can even be used for
general purposes outside the context of completion. Examples are:
C<complete_file()> (complete from list of files in a specific directory),
C<complete_env()> (complete from list of environment variables), and so on.

C<Complete::Bash::*> modules are specific to bash shell. See L<Complete::Bash>
on how to do bash tab completion with Perl.

C<Complete::Zsh::*> modules are specific to zsh shell. See L<Complete::Zsh> on
how to do zsh tab completion with Perl.

C<Complete::Fish::*> modules are specific to fish shell. See L<Complete::Fish>
on how to do fish tab completion with Perl.

Compared to other modules, this (family of) module(s) tries to have a clear
separation between general completion routine and shell-/environment specific
ones, for more reusability.

=head1 SEE ALSO

L<Bash::Completion>

L<Getopt::Complete>

L<Perinci::Sub::Complete> and C<Perinci::Sub::Complete::*> modules deal with
providing completion capability for functions that have L<Rinci> metadata.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Complete>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Complete>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Complete>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
