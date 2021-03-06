! @expect error

pure function cap(x)
  implicit none
  integer, intent(in) :: x
  integer :: y
  integer :: cap
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
  integer :: x
  call assert(cap(2) == 2)
  call assert(cap(15) /= 10)
  x = __verifier_nondet_int()
  call assert(cap(x) <= 10)
end program main


