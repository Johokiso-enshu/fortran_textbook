program TrigonometricFunction3
  implicit none     ! �Öق̌^�錾�̋֎~. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! �~����. 

  write(6,*) 'input theta'     ! �����̕�����. �Ȃ��Ă��悢��, ����Ɛe��. 
  read(5,*) theta     ! �����ŕϐ� theta ����ʂ�����͂���. 
  
  theta = (theta /180.d0)*pi     ! deg����rad�ւ̕ϊ�. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction3
