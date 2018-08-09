! @expect error

program compute
  use smack
  integer :: x,y,z
  x=10
  y=20
  z=x+y
  !print *, z == 30
  call assert(z /= 30)
end
