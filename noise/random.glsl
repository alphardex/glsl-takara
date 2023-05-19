float random(float n){
    return fract(sin(n)*43758.5453123);
}

float random(vec2 co)
{
    float a=12.9898;
    float b=78.233;
    float c=43758.5453;
    float dt=dot(co.xy,vec2(a,b));
    float sn=mod(dt,3.14);
    return fract(sin(sn)*c);
}

#pragma glslify:export(random)