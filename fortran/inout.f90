! @expect verified

subroutine addfive(x)
  implicit none
  integer, intent(inout) :: x
  x = x + 5
end subroutine addfive

program main
  use smack
  implicit none
  integer :: x = 2
  call addfive(x)
  !print *, x == 7
  call assert(x == 7)
end program main
