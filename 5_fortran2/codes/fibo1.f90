program FibonacciOriginal
  implicit none
  double precision:: a0, a1, a2, a3, a4, a5 ! a0�`a5�������^�Ƃ��Ē�`. 
  double precision:: phi2, phi3, phi4, phi5

! �����l. 
  a0 = 0.d0
  a1 = 1.d0

! n=2
  a2   = a1 + a0     ! �Q����. 
  phi2 = a2 / a1
  write(6,*) a2, phi2     ! Fibonacci����̒l���o��. 

! n=3
  a3   = a2 + a1
  phi3 = a3 / a2
  write(6,*) a3, phi3

! n=4
  a4   = a3 + a2
  phi4 = a4 / a3
  write(6,*) a4, phi4

! n=5
  a5   = a4 + a3
  phi5 = a5 / a4
  write(6,*) a5, phi5

  stop
end program FibonacciOriginal
