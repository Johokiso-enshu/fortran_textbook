program Discriminant
  implicit none
  double precision:: a, b, c, d

  write(6,*) 'Input a, b and c'
  read(5,*) a, b, c     ! ��ʂ���W��a, b, c�����. 
  
  d = b**2-4.d0*a*c     ! ���ʎ����v�Z. 

  write(6,*) 'Equation a x**2 + b x + c = 0 has'

! if���ɂ���������. 
  if (d > 0.0d0) then
    write(6,*) 'two real roots.'
  else if (d == 0.0d0) then
    write(6,*) 'one real root.'
  else
    write(6,*) 'two complex roots.'
  endif
  
  stop
end program Discriminant