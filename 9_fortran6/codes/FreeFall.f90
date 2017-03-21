program FreeFall
  implicit none
  integer:: i, n
  double precision:: dt, h, u0
  double precision:: x, u, t
  double precision:: xtrue, utrue ! 厳密解を格納する変数
  double precision:: g ! 重力加速度 ［m/s^2］

  open(unit=10, file='freefall.dat')

! 重力加速度
  g = 9.8d0
  
! オイラー法の計算条件.
  n  = 100 ! 繰り返し回数
  dt = 1.d-2 ! delta_t の大きさ

! 初期条件.
  h  = 1.d0
  u0 = 0.d0
  
! 初期条件の出力. 
  x  = h
  u  = u0
  write(10,'(5E18.10)') 0.d0, x, u, h, u0     ! 出力.

  do i = 1, n
    ! オイラー法
    call IncrementDt(x, u, g, dt)

    ! 厳密解の計算
    t = dble(i)*dt
    call ExaceSolution(xtrue, utrue, t, g, h, u0)

    write(10,'(5E18.10)') t, x, u, xtrue, utrue     ! 出力.
  enddo

  close(unit=10)
  stop
end program FreeFall


subroutine IncrementDt(x, u, g, dt)
! x, u に関して、時刻をdtだけ進めて次の値で上書きするサブルーチン
  implicit none
  double precision x, u, dt
  double precision:: g ! 重力加速度 ［m/s^2］

  x = x + u * dt
  u = u - g*dt
  
  return
end subroutine IncrementDt

  subroutine ExactSolution(xtrue, utrue, t, g, h, u0)
! x, u の厳密解を求めるサブルーチン
  implicit none
  double precision xtrue, utrue, t
  double precision:: g ! 重力加速度 ［m/s^2］
  double precision:: h, u0

  xtrue = h+u0*t-g*t*t*0.5d0
  utrue = u0-g*t
  
  return
end subroutine ExactSolution
