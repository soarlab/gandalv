pure function cap(x)
  integer, intent(in) :: x
  integer :: y
  y = x
  if (10 < y) then
      y = 10
  end if
  cap = y
end function


program main
  use smack
  implicit none
  integer :: cap
  call assert(cap(2) /= 2)
  call assert(cap(15) /= 10)
end program main


