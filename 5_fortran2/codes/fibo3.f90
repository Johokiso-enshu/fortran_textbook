program FibonacciDoLoop
  implicit none
  integer:: i     ! ループで用いる整数型変数. 
  double precision:: a(0:5), phi(2:5) ! aとphiを配列として宣言. 

! 初期値. 
  a(0) = 0.d0
  a(1) = 1.d0

! doループ. 
  do i = 2, 5
    ! i = 2としてenddoまでの命令を実行. 
    ! その後, この行に戻り, i = 3として実行. 
    ! 以後, 処理を繰り返し, i = 5での計算が終わると, ループを抜ける. 
    a(i)   = a(i-1) + a(i-2)
    phi(i) = a(i)   / a(i-1)
    write(6,*) a(i), phi(i)
  enddo

  stop
end program FibonacciDoLoop
