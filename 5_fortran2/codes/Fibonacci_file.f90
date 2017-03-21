program Fibonacci_doloop
  implicit none
  double precision ak  ! a_k
  double precision ak1 ! a_(k+1)
  double precision ak2 ! a_(k+2)
  integer k   ! ループ内で用いる変数

  ! 出力先としてoutput.datを開く.
  ! なお、unit=1は装置番号1を指定するという意味である。
  open(unit=1, file='fibonacci_file.dat')
  ! k = 0
  ak = 1.0
  ak1= 1.0
  ak2= ak + ak1
  write(1,*) ak
  write(1,*) ak1
  write(1,*) ak2

  do k = 1, 100
    ak = ak1
    ak1= ak2
    ak2= ak + ak1
    write(1,*) ak2
  enddo

  ! 以下の行では、開いていたファイルを閉じる作業を行う。
  close(unit=1)

  stop
end program Fibonacci_doloop
