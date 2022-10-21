##i<祖先染色体的数量+2
output=
for((i=2;i<4;i++))
do
	cat $output | tr -s '\n' '\t' | tr -s '#' '\n#' | sed -n "${i}p"  | tr -s '\t' '\n' > $output.$i.split
done
