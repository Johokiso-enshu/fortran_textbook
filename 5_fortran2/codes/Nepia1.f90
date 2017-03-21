program Nepia
  implicit none
  integer:: n, nmax 
  real(8):: e

  open(unit=1, file='e.dat')
  
  nmax = 1000
  do n = 1, nmax
    e=(1.d0+1.d0/dble(n))**n
    write(1,*) n,e
  enddo
 
  stop
end program Nepia