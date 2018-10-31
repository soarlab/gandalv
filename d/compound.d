// @expect verified

import smack;

class Point
{
    int x;
    int y;
    this(int _x, int _y) {
        x = _x;
        y = _y;
    }
}

void main()
{
    Point l = new Point(2,3);
    __VERIFIER_assert(l.x == 2);
    __VERIFIER_assert(l.y == 3);
}
