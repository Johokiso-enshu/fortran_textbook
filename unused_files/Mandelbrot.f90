 program Mandelbrot
  implicit none
  integer, parameter:: nx = 600, ny = 600, imax =1000
  real(8):: x0, x1, y0, y1
  integer:: ix, iy, i
  real(8):: x, y
  complex(8):: z, c

  open(10, file='mandelbrot.dat')

  x0 = -2.0d0
  x1 =  1.0d0
  y0 = -1.5d0
  y1 =  1.5d0

  do iy = 1, ny
    y = y0 + (y1-y0)*(iy-1)/dble(ny-1) 
    do ix = 1, nx
      x = x0 + (x1-x0)*(ix-1)/dble(nx-1)  
      c = dcmplx(x, y)
      z = (0.d0, 0.d0)

      do i = 0, imax
        z = z * z + c
            if (abs(z) > 2.d0) exit
      enddo
      write(10,*) x, y, i
    enddo

    write(10,*) 
  enddo

  close(unit=10)
  stop
end program Mandelbrot