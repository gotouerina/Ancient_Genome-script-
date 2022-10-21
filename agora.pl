##agora file batch
#Usage:perl agora.pl <file A> <Agora_file> <output> <list>
use warnings;
open($file_A,"<$ARGV[0]") or die "No input_file_A!\n"."Usage :perl abc.pl  <file A> <Agora_file> <output> <list>; ";
open($file_B,"<$ARGV[1]") or die "No input_file_B!\n"."Usage :perl abc.pl  <file A> <Agora_file> <output> <list>;" ;
if ($ARGV[2] && $ARGV[3])
{
}
else
{
	die "No input_file_C!\n"."Usage :perl abc.pl  <file A> <Agora_File> <output> <list>;"
}

open($out_put,">$ARGV[2]");
system("cat $ARGV[0] | tr -s ' ' '\n' | grep '[0-9]\$'> $ARGV[3]");
open($prefix,"+<$ARGV[3]");
@array1 = <$prefix>;
@array2 = <$file_B>;
for($i=0;$i<=$#array1;$i++)
{
	if ($array1[$i] =~ /^\d+/)
	{
	print {$out_put} $array2[$array1[$i]-1];
	}
	else
	{
	print {$out_put} $array1[$i];
	}
}

close();
sub close
{
	close $file_A;
	close $file_B;
	close $out_put;
	close $prefix;
}
