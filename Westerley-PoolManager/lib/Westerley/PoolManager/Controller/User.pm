package Westerley::PoolManager::Controller::User;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Westerley::PoolManager::Controller::User - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

sub login : Local Args(0) {
	my ($self, $c) = @_;

	my $username = $c->req->params->{username} // '';
	my $password = $c->req->params->{password} // '';
	my $op = $c->req->params->{op} // '';

	if ('login' eq $op) {
		if ($c->authenticate({ user_name => $username, password => $password })) {
			$c->flash(login_ok => 1);
			$c->response->redirect($c->uri_for('/'));
			$c->detach;
		} else {
			$c->stash(bad_credentials => 1);
		}
	}
}

sub logout : Local Args(0) {
	my ($self, $c) = @_;

	$c->logout();
	$c->flash(logout_ok => 1);
	$c->response->redirect($c->uri_for('/'));
	$c->detach;
}



=encoding utf8

=head1 AUTHOR

Anthony DeRobertis,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under GPL v3 or later.

=cut

__PACKAGE__->meta->make_immutable;

1;
