program FibonacciOutput
  implicit none
  integer:: i     ! ループで用いる整数型変数. 
  double precision:: a(0:50), phi(2:50)

! 出力先としてoutput.datを開く. 
! なお, unit=10は装置番号10を指定するという意味である. 
  open(unit=10, file='output.dat')

! 初期値. 
  a(0) = 0.d0
  a(1) = 1.d0

  do i = 2, 50
    a(i)   = a(i-1) + a(i-2)
    phi(i) = a(i)   / a(i-1)
    write(10,*) i, a(i), phi(i)     ! 装置番号10に書き込み. 
  enddo

  close(unit=10)     ! 装置番号10を閉じる. 
  stop
end program FibonacciOutput
