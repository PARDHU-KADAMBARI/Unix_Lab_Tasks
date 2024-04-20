cat file1.txt

awk '{printf}' file1.txt

awk '{ print $1, $3 }' file1.txt

awk '{ sum += $4 } END { print sum }' file1.txt

awk '{ sum += $4 } END { print sum / NR }' file1.txt

awk '{ print substr($1, 2, 3) }' file1.txt

awk '{ print $NF }' file1.txt

awk '{ if ($4 > 24) { print "senior" } else { print "junior" } }' file1.txt


awk 'function square(x) { return x*x } { print square($4) }' file1.txt
