use strict;
use warnings;
use experimentals;

sub main() {
    use Gtk3 '-init';

    my $window = Gtk3::Window->new('toplevel');
    $window->set_title("Gtk3 Window");
    $window->set_position("mouse");
    $window->set_default_size(400, 150);
    $window->set_border_width(20);
    $window->signal_connect (delete_event => sub { Gtk3->main_quit });

    $window->show_all;
    Gtk3->main;
}

main();
