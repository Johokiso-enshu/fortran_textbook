program Fibonacci1
  implicit none
  double precision ak  ! a_k
  double precision ak1 ! a_(k+1)
  double precision ak2 ! a_(k+2)

  ! k = 0
  ak = 1
  ak1= 1
  write(6,*) 'a0= ',ak
  write(6,*) 'a1= ',ak1
  ak2= ak + ak1
  write(6,*) 'a2= ',ak2

  ! k = 1
  ak = ak1
  ak1= ak2
  ak2= ak + ak1
  write(6,*) 'a3= ', ak2

  ! k = 2
  ak = ak1
  ak1= ak2
  ak2= ak + ak1
  write(6,*) 'a4= ', ak2

  stop
end program Fibonacci1
