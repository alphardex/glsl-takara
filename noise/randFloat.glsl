highp float random(vec2 co)
{
    highp float a=12.9898;
    highp float b=78.233;
    highp float c=43758.5453;
    highp float dt=dot(co.xy,vec2(a,b));
    highp float sn=mod(dt,3.14);
    return fract(sin(sn)*c);
}

float randFloat(vec2 co,float minVal,float maxVal)
{
    return random(co)*(maxVal-minVal)+minVal;
}

#pragma glslify:export(randFloat)