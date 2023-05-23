float saturate(float a){
    return clamp(a,0.,1.);
}

vec2 saturate(vec2 a){
    return clamp(a,0.,1.);
}

vec3 saturate(vec3 a){
    return clamp(a,0.,1.);
}

vec4 saturate(vec4 a){
    return clamp(a,0.,1.);
}

float remap01(float a,float b,float t)
{
    return saturate((t-a)/(b-a));
}

vec2 remap01(vec2 a,vec2 b,vec2 t)
{
    return saturate((t-a)/(b-a));
}

vec3 remap01(vec3 a,vec3 b,vec3 t)
{
    return saturate((t-a)/(b-a));
}

vec4 remap01(vec4 a,vec4 b,vec4 t)
{
    return saturate((t-a)/(b-a));
}

#pragma glslify:export(remap01)