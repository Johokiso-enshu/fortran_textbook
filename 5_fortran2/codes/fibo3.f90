program FibonacciDoLoop
  implicit none
  integer:: i     ! ���[�v�ŗp���鐮���^�ϐ�. 
  double precision:: a(0:5), phi(2:5) ! a��phi��z��Ƃ��Đ錾. 

! �����l. 
  a(0) = 0.d0
  a(1) = 1.d0

! do���[�v. 
  do i = 2, 5
    ! i = 2�Ƃ���enddo�܂ł̖��߂����s. 
    ! ���̌�, ���̍s�ɖ߂�, i = 3�Ƃ��Ď��s. 
    ! �Ȍ�, �������J��Ԃ�, i = 5�ł̌v�Z���I����, ���[�v�𔲂���. 
    a(i)   = a(i-1) + a(i-2)
    phi(i) = a(i)   / a(i-1)
    write(6,*) a(i), phi(i)
  enddo

  stop
end program FibonacciDoLoop
