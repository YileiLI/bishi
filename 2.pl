$k = 1000;
@lines;
$n = 0;
srand;
while(<>) {
    $n++;
    if ($n <= $k) {
        push(@lines, $_);
    } else {
        $r = int(rand($n));
        if ($r < $k) {
            $lines[$r] = $_;
        }
    }
}

print "@lines\n"