let
  min = x:  y: if x < y then x else y;
  max = x:  y: if x > y then x else y;
in
{
  ex0 = min 5 3;
  ex1 = max 9 4;
}

#make stdenv.lib available 
#with import <nixpkgs> { };
#{
#	ex0 = stdenv.lib.min 5 3;
#   ex1 = stdenv.lib.max 9 4;
#
#}
