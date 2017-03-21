program EulerMethod
  implicit none
  integer:: i, n
  real(8) a, dt, x0, x, xtrue, f, t

  open(unit=10, file='euler.dat')

! パラメータ. 
  n  = 1000     ! ステップ数
  dt = 1.d-2    ! 時間刻み幅
  a  = 1.d0     ! 適当な定数

! 初期条件. 
  x0 = 1.d0
  x  = x0
  write(10,'(3E18.10)') 0.d0, x, x0     ! 初期条件を出力. 

  do i = 1, n
    f = a*x     ! 右辺をあらかじめ計算. 
    x = x + f*dt     ! Euler法による時間発展. 

    t = dble(i)*dt
    xtrue = x0*exp(a*t)     ! 厳密解. 

    write(10,'(3E18.10)') t, x, xtrue     ! 出力. 
  enddo

  close(unit=10)
  stop
end program EulerMethod
