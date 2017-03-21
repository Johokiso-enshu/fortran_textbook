program IfStatement
  implicit none
  real(8):: x

  write(6,*) 'Input a real number x.'
  read(5,*) x
  write(6,*) 'x = ',x
  
  if (x < 0.0d0) x = -x
  
  write(6,*) 'abs(x) = ', x
  
  stop
end program IfStatement