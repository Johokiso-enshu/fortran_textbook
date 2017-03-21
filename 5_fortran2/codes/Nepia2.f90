program Nepia2
  implicit none
  integer:: i, n 
  real(8):: a, sum, e, error

  open(unit=1, file='e.dat')
  
  n = 100
  e = exp(1.d0)
  
  a = 1.d0
  sum = 1.d0
  do i = 1, n
    a = a/dble(i)
    sum = sum + a
    
    error = abs(sum-e)/e
    write(1,*) i, sum, error
  enddo
 
  stop
end program Nepia2