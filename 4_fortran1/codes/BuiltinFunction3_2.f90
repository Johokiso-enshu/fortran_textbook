program TrigonometricFunction2
  implicit none     ! 暗黙の型宣言の禁止. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! 円周率. 
  theta = 60.d0     ! 任意の角度[deg]. 
  
  theta = (theta /180.d0)*pi     ! degからradへの変換. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction2
