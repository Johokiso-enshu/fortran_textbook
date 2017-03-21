program Shahou
  implicit none
  integer:: i, imax
  real(8):: pi, dt, t, m, g, CD, rho, a, coeff, nu, Re
  real(8):: x, y, u, v, xold, yold, uold, vold
  real(8):: x0, y0, u0, v0, xt, yt
  real(8):: theta, w
  
  open(10,file='shahou.dat')
  
  pi    = acos(-1.d0)
  m     = 1.d0
  g     = 9.8d0
  CD    = 0.44d0
  rho   = 1.261d0
  a     = 1.d-1
  nu    = 1.395d-5
  coeff = 0.5d0*rho*pi*a*a*CD/m
  
  w     = 10.d0
  theta = 50.d0
  theta = theta*pi/180.d0
  
  write(*,*) 'Re=', 2.d0*a*w/nu

  dt = 0.001d0
  imax = 20000
  
  x0 = 0.d0
  y0 = 0.d0
  u0 = w*cos(theta)
  v0 = w*sin(theta)
  
  x = x0
  y = y0
  u = u0
  v = v0
  
  t=0.d0
  
  write(10,'(7E16.8)') t, x, y, u, v, x0, y0
  
  do i = 1, imax
    xold = x
    yold = y
    uold = u
    vold = v
  
    x =xold +u*dt
    y =yold +v*dt
    u =uold -coeff*sqrt(u*u+v*v)*u*dt
    v =vold -g*dt-coeff*sqrt(u*u+v*v)*v*dt
    
    t = dble(i)*dt
    xt = x0+u0*t
    yt = y0+v0*t-g*t*t*0.5d0
  
    if (mod(i,10) == 0) write(10,'(7E16.8)') t, x, y, u, v, xt, yt
  
  enddo

  close(unit=10)
  stop
end program Shahou