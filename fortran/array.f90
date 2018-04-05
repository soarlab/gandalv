
program main
  use smack
  implicit none
  integer, dimension(1) :: array = (/ 3 /)
  !print *, array(1) == 3
  call assert(array(1) /= 3)
end program main
