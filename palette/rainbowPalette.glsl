// https://iquilezles.org/articles/palettes/
vec3 cosPalette(float t,vec3 a,vec3 b,vec3 c,vec3 d){
    return a+b*cos(6.28318*(c*t+d));
}

vec3 rainbowPalette(float t){
    vec3 a=vec3(.5);
    vec3 b=vec3(.5);
    vec3 c=vec3(1.);
    vec3 d=vec3(0.,.33,.67);
    return cosPalette(t,a,b,c,d);
}

#pragma glslify:export(rainbowPalette)