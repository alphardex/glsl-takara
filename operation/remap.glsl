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

float remap(float a,float b,float c,float d,float t)
{
    return saturate((t-a)/(b-a))*(d-c)+c;
}

vec2 remap(vec2 a,vec2 b,vec2 c,vec2 d,vec2 t)
{
    return saturate((t-a)/(b-a))*(d-c)+c;
}

vec3 remap(vec3 a,vec3 b,vec3 c,vec3 d,vec3 t)
{
    return saturate((t-a)/(b-a))*(d-c)+c;
}

vec4 remap(vec4 a,vec4 b,vec4 c,vec4 d,vec4 t)
{
    return saturate((t-a)/(b-a))*(d-c)+c;
}

#pragma glslify:export(remap)