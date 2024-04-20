#! /bin/bash

# more command
cat sample.txt
echo " "
echo " more -d sample.txt"
more -d sample.txt
echo " "
echo "more -f sample.txt"
more -f sample.txt
# more -p sample.txt
# more -c sample.txt
echo " "
echo "more -u sample.txt"
more -u sample.txt
echo " "
echo "more -s sample.txt"
more -s sample.txt
echo " "
echo "more +5 sample.txt"
more +5 sample.txt
echo " "
echo "mmore +/Lorem sample.txt"
more +/Lorem sample.txt
echo " "


# nl command
nl file1.txt
echo ""
nl -b a file1.txt
echo ""
nl -l 1 file1.txt
echo ""
nl -i3 file1.txt
echo ""
nl -v4 file1.txt 
echo ""
nl -s "..." file1.txt
echo ""
nl -w2 file1.txt
nl -w4 file1.txt
nl -w6 file1.txt
echo ""
nl -n ln file1.txt
nl -n rn file1.txt
nl -n rz file1.txt
echo ""


#nice command
ps -el | grep terminal
echo ""
nice -10 gnome-terminal
echo ""
nice --10 gnome-terminal
echo ""
sudo renice -n 15 -p 2732
echo ""
#renice -n 10 -g 1
echo ""
#sudo renice -n 10 -u 1
echo ""

# passwd command
sudo passwd root
echo ""
passwd pavan422178
echo ""

#pr command
cat file1.txt
echo ""
pr -3 file1.txt
echo ""
pr -t file1.txt
echo ""
pr -d file1.txt
echo ""
pr -n file1.txt
echo ""
pr -h "header" file1.txt
echo ""
pr --version
echo ""

#rlogin command
rlogin -l pavan422178 Pavan422178
echo ""
rlogin -T terminal_type pavan422178
echo ""

#rcp command 
rcp Pavan422178:file1.txt
echo ""
rcp -p Pavan422178:one/file1.txt
echo ""

#telnet command
telnet localhost
logout
echo ""

#tput command
tput init
echo ""
tput reset
echo ""
tput longname
echo ""
tput -V
echo ""

#tty command
tty
tty -s
tty --version

#uname command
echo ""
uname -a
echo ""
uname -s
echo ""
uname -n
echo ""
uname -r
echo ""
uname -v
echo ""
uname -m
echo ""
uname -p
echo ""
uname -i
echo ""
uname -o

#wc command
wc file1.txt
echo ""
wc file2.txt
echo ""
wc file1.txt file2.txt
echo ""
wc -l file1.txt
echo ""
wc -l file1.txt file2.txt
echo ""
wc -w file1.txt
echo ""
wc -w file1.txt file2.txt
echo ""
wc -c file1.txt
echo ""
wc -c file1.txt file2.txt
echo ""
wc -m file1.txt
echo ""
wc -m file1.txt file2.txt
echo ""
wc -L file1.txt
echo ""
wc -L file1.txt file2.txt
echo ""

#who command
who -a
echo ""
who -b
echo ""
who -d
echo ""
who -H
echo ""
who -l
echo ""
who -m
echo ""
who -p
echo ""
who -q
echo ""
who -r
echo ""
who -s
echo ""
who -t
echo ""
who -u
echo ""

#write command
write -V

