// http://iquilezles.org/www/articles/checkerfiltering/checkerfiltering.htm
float checkersGradBox(vec2 p)
{
    vec2 w=fwidth(p)+.001;
    vec2 i=2.*(abs(fract((p-.5*w)*.5)-.5)-abs(fract((p+.5*w)*.5)-.5))/w;
    return clamp(.5-.5*i.x*i.y,0.,1.);
}

#pragma glslify:export(checkersGradBox)