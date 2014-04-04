package Westerley::PoolManager::Model::Pool;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Westerley::PoolManager::Schema',
    
    connect_info => {
        dsn => 'dbi:Pg:dbname=westerley',
        user => '',
        password => '',
        AutoCommit => q{1},
    }
);

=head1 NAME

Westerley::PoolManager::Model::Pool - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Westerley::PoolManager>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Westerley::PoolManager::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.61

=head1 AUTHOR

Anthony DeRobertis

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
