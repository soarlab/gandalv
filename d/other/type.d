// @expect verified

import smack;

class Location
{
    int x;
    this(int _x) {
        x = _x;
    }
}

void main()
{
    Location l = new Location(3);
    assert(l.x == 3);
}
