program Jpn_attractor
  implicit none
  double precision x  ! x
  double precision y  ! y
  double precision t  ! y
  double precision k, B ! a_(k+2)
  double precision dt ! 差分 dt
  integer i   ! ループ内で用いる変数

  k = 0.1
  B = 12.0

  ! 出力先としてoutput.datを開く.
  open(unit=1, file='Jpn_attractor_file.dat')
  ! x, y, t に初期値を代入する。
  x = 1.0
  y = 1.0
  t = 0.0
  do i = 1, 1000
    ! x を　x(t+dt) = x(t) + y * dt を用いて更新する。
    x = x + y * dt
    ! 以下に、y に関する漸化式を作成し、コーディングせよ

    ! t をdt分だけ進める
    t = t + dt

    write(1,*) t, x, y
  enddo

  ! 以下の行では、開いていたファイルを閉じる作業を行う。
  close(unit=1)

  stop
end program Jpn_attractor
