program Main
  implicit none
  double precision:: lfact_k

  ! log(3!)
  call LogFactorial(3, lfact_k)
  write(6,*) lfact_k
  ! log(100!)
  call LogFactorial(100, lfact_k)
  write(6,*) lfact_k
  ! log(10000!)
  call LogFactorial(10000, lfact_k)
  write(6,*) lfact_k

  stop
end program Main

subroutine LogFactorial(k, lfact_k)
  ! log(k!) を計算するサブルーチン
  ! kは整数. 計算結果をlfact_kに代入する. 
  implicit none
  integer:: i,k
  integer:: k_threshold
  ! k<k_threshold 以下なら sum{log(k)}を計算し, それ以外なら
  ! 0.5*log(2pi k) + k log(k) - k を計算する
  double precision:: lfact_k, pi

  pi = acos(-1.d0)
  k_threshold = 1000 ! 具体的な k_threshold の値を記入する

  ! k < k_threshold の場合. sum{log(k)}を計算する
  if (k < k_threshold) then
    lfact_k=0.d0
    do i=1, k
      lfact_k = lfact_k+log(1.0d0*k)
    enddo
  else ! k > k_threshold の場合. 0.5*log(2pi k) + k log(k) - k を計算する
    lfact_k = 0.5d0*log(2.d0*pi*k) + k*log(1.0d0*k)-k
  endif

  return
end subroutine LogFactorial
