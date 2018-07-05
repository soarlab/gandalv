! @expect verified

program main
  use smack
  implicit none
  integer, pointer :: box
  integer, target :: x = 3
  box => x
  print *, box == 3
  call assert(box == 3)
end program main
