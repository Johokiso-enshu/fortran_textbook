program TrigonometricFunction2
  implicit none     ! ˆÃ–Ù‚ÌŒ^éŒ¾‚Ì‹Ö~. 
  double precision:: pi, theta
  
  pi = acos(-1.d0)     ! ‰~ü—¦. 
  theta = 60.d0     ! ”CˆÓ‚ÌŠp“x[deg]. 
  
  theta = (theta /180.d0)*pi     ! deg‚©‚çrad‚Ö‚Ì•ÏŠ·. 

  write(6,*) 'sin(x) = ', sin(theta)
  write(6,*) 'cos(x) = ', cos(theta)
  write(6,*) 'tan(x) = ', tan(theta)

  stop
end program TrigonometricFunction2
