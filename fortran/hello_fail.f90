! @expect error

program hello
  use smack
  implicit none
  call assert(.FALSE.)
end
