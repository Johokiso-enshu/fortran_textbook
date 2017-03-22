program Timing
  implicit none
  integer:: t1, t2, t_rate

  call system_clock(t1)     ! ここから時間測定.

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! 適当な処理
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  call system_clock(t2,t_rate)     ! ここまで時間測定.
  write(6,*) dble(t2-t1)/dble(t_rate), 'sec'     ! 秒単位で実行時間を表示.

  stop
end program Timing
