cat file1.txt

sed 's/s01/01/' file1.txt

cat file1.txt

sed 's/25/21/g' file1.txt

sed '2d' file1.txt

sed '$d' file1.txt

sed '1,4d' file1.txt

sed '4,$d' file1.txt

cat file1.txt

sed '/22/d' file1.txt
