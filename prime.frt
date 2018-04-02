: prime
  dup
  1
  - ( a a-1 )  
  if ( a-1!=0 )
  2 ( a 2 )
  repeat 
    swap ( i a )
    dup  ( i a a )
    rot  ( a a i )
    dup  ( a a i i )
    1    
    + ( a a i i+1 )   ( 1 1 2 3 )
    rot  ( a i i+1 a )   ( 1 2 3 1 )
    rot  ( a i+1 a i )   ( 1 3 1 2 )
    % ( a i+1 a%i )   ( 1 3 1 )
    not                  ( 1 3 0 )
  until ( a%i != 0 )
  <
  else ( return 1 ) 
  then  
;
