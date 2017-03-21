program FreeFall_friction
  implicit none
  integer:: i, n
  real(8):: dt, h, u0
  real(8):: x, u, t

  double precision:: a   ! 物体の大きさ [m]. 
  double precision:: m   ! 物体の質量 [kg]. 
  double precision:: rho ! 空気の密度[kg/m3]
  double precision:: g ! 重力加速度 ［m/s^2］
  double precision:: D ! 空気抵抗の大きさを格納する変数. 
  open(unit=10, file='freeFall_friction.dat')

! 物体の大きさ, 質量, 空気密度, 重力加速度
  a = 0.05d0     ! リンゴの直径を10cmとする. 
  m = 0.5d0      ! リンゴの質量を500gとする.  
  rho=1.293d0
  g = 9.8d0

! オイラー法の計算条件.
  n  = 100 ! 繰り返し回数
  dt = 1.d-2 ! delta_t の大きさ

! 初期条件.
  h  = 1.d0     ! リンゴを落とす高さは1m. 
  u0 = 0.d0     ! そっと手をはなす. 
  x  = h
  u  = u0
  t  = 0.d0

  do i = 1, n
    ! 空気抵抗の大きさDを計算する。
    call Friction(rho, a, D, u)
    ! オイラー法
    call IncrementDtFric(x, u, D, m, g, dt)
    t = t+dt
    write(10,'(5E18.10)') t, x, u     ! 出力.
  enddo

  close(unit=10)
  stop
end program FreeFall_friction

subroutine Friction(rho, a, D, u)
  ! 空気抵抗の大きさを計算するサブルーチン
  ! rho, a, Cd, m はそれぞれ 空気の密度, 物体の半径, 物体の質量を表す. 
  ! u は物体の速度を表す
  implicit none
  double precision rho, a, D, u
  double precision:: Cd ! 抗力係数
  double precision:: pi
  
  pi = acos(-1.d0)
  Cd = 0.44d0
  
  ! 空気抵抗の大きさ
  D = 0.5*rho*u*u*pi*a*a*Cd

  return
end subroutine Friction

subroutine IncrementDtFric(x, u, D, m, g, dt)
  ! x, u に関して、時刻をdtだけ進めて次の値で上書きするサブルーチン
  ! D は空気抵抗の大きさを表す. 
  implicit none
  double precision x, u, D, m, g, dt
  
  ! １ステップ進める
  x = x + u * dt
  u = u -g*dt - D*u/abs(u)/m*dt

  return
end subroutine IncrementDtFric
