use v6.c;
use Test;

use lib 'lib';
use Judo;

subtest {
    my %waza = Judo.waza;
    subtest {
        is %waza<nage-waza>.keys,
            'ashi-waza koshi-waza yoko-sutemi-waza kanji te-waza ma-sutemi-waza',
            'All Nage waza keys present';

        subtest {
            is %waza<nage-waza><te-waza>.keys,
            'seoi-otoshi seoi-nage ippon-seoi-nage',
            'All Te-Waza techniques present';
            done-testing;
        }, 'te-waza';

        done-testing;
    }

    done-testing;
}, 'waza()';

done-testing;