package TestApp::Controller::Root;

use Moose;
BEGIN { extends 'Catalyst::Controller' };
 with 'Catalyst::Controller::Role::DBIC::DoesPaging';

__PACKAGE__->config->{namespace} = '';

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

1;
