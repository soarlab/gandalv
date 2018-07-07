! @expect verified
! @flag --unroll=3

program main
  use smack
  implicit none
  integer, dimension(2) :: A = (/ 2, 3 /)
  integer, dimension(2) :: B = (/ 3, 4 /)
  integer, dimension(2) :: S
  S = A + B
  call assert(S(1) == 5)
  call assert(S(2) /= 7)
end program main
