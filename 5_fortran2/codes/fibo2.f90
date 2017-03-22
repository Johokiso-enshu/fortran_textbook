program FibonacciArray
  implicit none
  double precision:: a(0:5), phi(2:5) ! aとphiを配列として宣言. 

! 初期値. 
  a(0) = 0.d0
  a(1) = 1.d0

! n=2
  a(2)   = a(1) + a(0)
  phi(2) = a(2) / a(1)
  write(6,*) a(2), phi(2)

! n=3
  a(3)   = a(2) + a(1)
  phi(3) = a(3) / a(2)
  write(6,*) a(3), phi(3)

! n=4
  a(4)   = a(3) + a(2)
  phi(4) = a(4) / a(3)
  write(6,*) a(4), phi(4)

! n=5
  a(5)   = a(4) + a(3)
  phi(5) = a(5) / a(4)
  write(6,*) a(5), phi(5)

  stop
end program FibonacciArray
