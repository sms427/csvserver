rm -rf inputFile;
echo "argument value=$1"
START=1
END=$1
if [[ -z "$END" ]]
then
echo "given agument value empty taking default 10"
for i in {1..10}; do printf '%s\n' $i, $RANDOM | paste -sd " " >> inputFile; done
else
echo "given agument value not empty taking numof aguments"
for  (( c=$START; c<=$END;c++ )) ;do printf '%s \n ' $c, $RANDOM | paste -sd " " >> inputFile; done 
fi


#output:
======
$ ./gencsv.sh 
argument value=
given agument value empty taking default 10
[node3] (local) root@192.168.0.11 ~
$ cat inputFile 
1, 29390
2, 29339
3, 10538
4, 4344
5, 15427
6, 22974
7, 3348
8, 139
9, 6269
10, 5621
[node3] (local) root@192.168.0.11 ~
$ 
[node3] (local) root@192.168.0.11 ~
$ ./gencsv.sh 14
argument value=14
given agument value not empty taking numof aguments
[node3] (local) root@192.168.0.11 ~
$ cat inputFile 
1,   9325   
2,   20931   
3,   6211   
4,   25880   
5,   31188   
6,   26930   
7,   21353   
8,   21112   
9,   31488   
10,   18691   
11,   4972   
12,   19134   
13,   24069   
14,   4541 
