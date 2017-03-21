program Factorial
  implicit none
  double precision fact_direct  ! direct calculation result
  double precision fact_approx  ! approximation result
  integer k   ! ループ内で用いる変数


  fact_direct = 0.0d0
  ! k = 0
  do k = 1, 200
    ! kに1を代入し、enddoまで実行が終わると、この行に戻りk=2として再度実行する。
    ! k=10での計算が終わるとenddoの次の行を実行する。
    fact_direct = fact_direct + log(1.0d0*k)
    fact_approx = 1.0d0*k*log(1.0d0*k) - k
    write(6,*) fact_direct, fact_approx
  enddo
  stop
end program Factorial
