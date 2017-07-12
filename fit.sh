#!/bin/bash
for i in `seq 0 48` ;do
#a=$(expr "$i+1"|bc)
#b=$a*10
a=$(expr "$i+1"|bc)
echo $i $a >>std.out
paste $i.vasp $a.vasp | tail -40  | awk '{printf "%14.9f %14.9f %14.9f \n", $4-$1,$5-$2,$6-$3}' >>std.out
done
