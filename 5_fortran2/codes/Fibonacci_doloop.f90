program Fibonacci_doloop
  implicit none
  double precision ak  ! a_k
  double precision ak1 ! a_(k+1)
  double precision ak2 ! a_(k+2)
  integer k   ! ループ内で用いる変数

  ! k = 0
  ak = 1
  ak1= 1
  ak2= ak + ak1
  write(6,*) ak
  write(6,*) ak1
  write(6,*) ak2

  do k = 1, 20
    ! kに1を代入し、enddoまで実行が終わると、この行に戻りk=2として再度実行する。
    ! k=10での計算が終わるとenddoの次の行を実行する。
    ak = ak1
    ak1= ak2
    ak2= ak + ak1
    write(6,*) ak2
  enddo
  stop
end program Fibonacci_doloop
