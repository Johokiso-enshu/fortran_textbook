program PrimeNumberFast
  implicit none
  integer:: i, j, nprime, jmax
  integer:: ti, tf, tr

  call system_clock(ti)

  open(10, file='prime.dat')

  write(10,*) 2, 1

  i = 3
  nprime = 2

  write(10,*) i, nprime

  do
    i = i+2
    jmax=int(sqrt(dble(i)))
  
    do j = 3, jmax
      if (mod(i,j) == 0) exit
      if (j == jmax) then
        nprime = nprime+1
        write(10,*) i, nprime
        if (nprime == 10000) goto 100
      endif
    enddo
  
  enddo

  100 continue
  call system_clock(tf, tr)
  write(6,*) (tf-ti)/dble(tr), 'sec'

stop
end program PrimeNumberFast
