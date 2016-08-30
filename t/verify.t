use strict;
use warnings;

use Test::More;

{
    use Acme::Holy'Shit::Here::Come's::An'S;

    is "\N{HOLY SHIT HERE COMES AN S}", "\N{APOSTROPHE}", "Holy 'Shit Here Come's An 'S!";
    is charnames::vianame("HOLY SHIT HERE COMES AN S"), ord("'"), "vianame";
}

is charnames::vianame("HOLY SHIT HERE COMES AN S"), undef, "not out'side 'scope";

done_testing;
