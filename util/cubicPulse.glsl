// https://iquilezles.org/articles/functions/
float cubicPulse(float c,float w,float x)
{
    x=abs(x-c);
    if(x>w)return 0.;
    x/=w;
    return 1.-x*x*(3.-2.*x);
}

#pragma glslify:export(cubicPulse)