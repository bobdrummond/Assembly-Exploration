unsigned int fun(unsigned int a, unsigned int b)
{
  return a<<5 | b;
}

unsigned int more_fun ( unsigned int a )
{
    return(fun(a+1,2)+3);
}

unsigned int shift_fun ( unsigned int a, unsigned int b, unsigned int c, unsigned int d )
{
    a<<=1;
    b<<=2;
    c<<=3;
    d<<=4;
    return(a+b+c+d);
}
