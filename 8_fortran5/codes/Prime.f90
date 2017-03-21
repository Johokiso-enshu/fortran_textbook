program PrimeNumber
  implicit none
  integer:: nmax_prime=10000 ! 見つける素数の数。1000個見つける。
  integer:: n_prime ! 現在まで見つけた素数の数を格納する変数
  integer:: ti, tf, tr ! 時間を測るための変数
  integer:: i, j
  integer:: true_if_prime ! 素数だと１を入れるためのフラッグ

  call system_clock(ti)

  open(10, file='prime.dat')

  i = 2 ! １番めの素数
  n_prime = 1 ! １個目を見つけた

  write(10,*) i, n_prime, (tf-ti)/dble(tr)

  do ! doのあとに何も書かなければ無限ループとなる。
    i = i+1
    ! 現在のiが素数かどうか調べる。素数ならtrue_if_primeに1が入る。
    call IsPrime(2,i-1,i,true_if_prime)
    ! 素数の場合
    if(true_if_prime==1) then
      n_prime = n_prime+1                 ! 見つけた素数の数をアップデートする
      call system_clock(tf, tr) ! 現在時刻を取得する。
      ! 何個目の素数か、素数の値、スタートからこれまでにかかった時間　をファイルに記録する。
      write(10,*) n_prime, i, (tf-ti)/dble(tr)
    endif
    ! nmax_prime個まで見つかればループを抜ける
    if (n_prime == nmax_prime) exit
  enddo

  call system_clock(tf, tr)
  ! 最後にかかった秒数を画面に表示する。
  write(6,*) (tf-ti)/dble(tr), 'sec'
  close(10)
  stop
end program PrimeNumber

subroutine IsPrime(start, end, target, true_if_prime)
  ! 整数値targetが素数かどうかを判定するサブルーチン。
  ! 素数であればtrue_if_prime に1を、そうでなければ0を入れる。
  integer:: start, end, target, next
  integer:: true_if_prime
  integer:: i
  i=start
  true_if_prime = 1
  ! i = start, start+1, ..., endでtargetが割り切れるか試していき、
  ! 割り切れるとtrue_if_primeに0を入れてサブルーチンを抜ける。
  do i = start, end
    if (mod(target, i)==0) then ! 割り切れる場合
      true_if_prime = 0
      return
    endif
  enddo
  ! 割り切れなかった場合は、true_or_falseを更新しない。
  return
end subroutine IsPrime
