program Main
  implicit none
  integer:: i
  real(8):: k
  real(8):: pi
  real(8):: lfact_k, klog_k

  pi = 3.14159265359
  lfact_k = 0.0d0
  do i = 1, 1000
    k = 1.0d0*i
    lfact_k = lfact_k+log(k)
    klog_k = 0.5*log(2*pi*k) + k*log(k)-k
    write(6,*) lfact_k, klog_k
  enddo
  stop
end program Main
