! @expect verified

program main
  use smack
  implicit none
  type Location
    integer x
  end type Location

  type(Location) :: p
  p = Location(3)
  !print *, p%x == 3
  call assert(p%x == 3)
end program main
