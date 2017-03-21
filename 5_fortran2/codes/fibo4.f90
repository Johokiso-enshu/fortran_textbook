program FibonacciOutput
  implicit none
  integer:: i     ! ���[�v�ŗp���鐮���^�ϐ�. 
  double precision:: a(0:50), phi(2:50)

! �o�͐�Ƃ���output.dat���J��. 
! �Ȃ�, unit=10�͑��u�ԍ�10���w�肷��Ƃ����Ӗ��ł���. 
  open(unit=10, file='output.dat')

! �����l. 
  a(0) = 0.d0
  a(1) = 1.d0

  do i = 2, 50
    a(i)   = a(i-1) + a(i-2)
    phi(i) = a(i)   / a(i-1)
    write(10,*) i, a(i), phi(i)     ! ���u�ԍ�10�ɏ�������. 
  enddo

  close(unit=10)     ! ���u�ԍ�10�����. 
  stop
end program FibonacciOutput
