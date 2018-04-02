include prime.frt

: radical
  dup
  2
  >
  if
1
swap
2 ( i = 2 )( num 2 )
  
repeat
over ( multiply num i num )
over ( multiply num i num i )
  
% ( num % i)
not

over ( multiply num i num%i==0 i )

prime ( multiply num i num%i==0 isPrime[i] )

and 

if ( num % i == 0 & isPrime[i])
rot ( num i multiply )
over ( num i multiply i )
* ( multiply *= i)
  
rot rot ( multiply num i )
then

1 + ( i++ )

over ( multiply num i num )
over ( multiply num i num i )

= ( num == i )

until
drop ( multiply num )
swap ( num multiply )
    
dup
    1 = 
if ( multiply==1 )
drop ( num )
else
swap
drop ( multiply )
then
  then
;
