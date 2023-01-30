// https://www.shadertoy.com/view/XdS3RW
vec3 luminosity(vec3 s,vec3 d)
{
    float dLum=dot(d,vec3(.3,.59,.11));
    float sLum=dot(s,vec3(.3,.59,.11));
    float lum=sLum-dLum;
    vec3 c=d+lum;
    float minC=min(min(c.x,c.y),c.z);
    float maxC=max(max(c.x,c.y),c.z);
    if(minC<0.)return sLum+((c-sLum)*sLum)/(sLum-minC);
    else if(maxC>1.)return sLum+((c-sLum)*(1.-sLum))/(maxC-sLum);
    else return c;
}

#pragma glslify:export(luminosity)