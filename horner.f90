subroutine horner(n, a, x, y)
    implicit none
    integer :: n, i
    double precision :: a(n), x, y

    y = a(n)
    do i = n - 1, 1, -1
        y = y * x + a(i)
    end do
end subroutine
