// @expect error

#include <smack.h>//<cassert>

class Fish
{
public:
    virtual int numTails()
    {
        return 1;
    }
};

class TwinTailBeta: public Fish
{
public:
    int numTails()
    {
        return 2;
    }
};

int main(void)
{
    Fish *f = new Fish();
    Fish *b = new TwinTailBeta();
    
    assert(f->numTails() == 1);
    assert(b->numTails() != 2); 
    
    delete f;
    delete b;
}
