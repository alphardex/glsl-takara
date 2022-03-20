// http://iquilezles.org/www/articles/checkerfiltering/checkerfiltering.htm
float checkersGradBox(in vec2 p,in vec2 dpdx,in vec2 dpdy)
{
    // filter kernel
    vec2 w=abs(dpdx)+abs(dpdy)+.001;
    // analytical integral (box filter)
    vec2 i=2.*(abs(fract((p-.5*w)*.5)-.5)-abs(fract((p+.5*w)*.5)-.5))/w;
    // xor pattern
    return.5-.5*i.x*i.y;
}

#pragma glslify:export(checkersGradBox)