program TrigonometricFunction2
  implicit none     ! �Öق̌^�錾�̋֎~. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! �~����. 
  theta = 60.d0     ! �C�ӂ̊p�x[deg]. 
  
  theta = (theta /180.d0)*pi     ! deg����rad�ւ̕ϊ�. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction2
