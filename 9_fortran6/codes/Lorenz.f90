program lorenz
  implicit none
  integer:: i, j, n
  real(8):: a, b, mu
  real(8):: dt, time
  real(8):: x(3), f(3)

  open(10, file='lorenz.dat')
  
  a  = 10.d0
  b  = 8.d0/3.d0
  mu = 40.d0

  x(1) = 10.d0
  x(2) = 10.d0
  x(3) = 10.d0
  
  
  time = 0.d0
  dt   = 1.d-3
  n    = 10000
  
  write(10,'(4E15.7)') time, x(1), x(2), x(3)

  do i = 1, n
    f(1) = -a*x(1) + a*x(2)
    f(2) = mu*x(1) - x(2)-x(1)*x(3)
    f(3) = -b*x(3) + x(1)*x(2)

    do j = 1, 3
      x(j)=x(j)+f(j)*dt
    enddo

    time=dble(i)*dt 
    write(10,'(4E15.7)') time, x(1), x(2), x(3)
  enddo
  
  stop
end program lorenz

