float map(float a,float b,float c,float d,float t)
{
    float v=(t-a)/(b-a)*(d-c)+c;
    return v;
}

vec2 map(vec2 a,vec2 b,vec2 c,vec2 d,vec2 t)
{
    vec2 v=(t-a)/(b-a)*(d-c)+c;
    return v;
}

vec3 map(vec3 a,vec3 b,vec3 c,vec3 d,vec3 t)
{
    vec3 v=(t-a)/(b-a)*(d-c)+c;
    return v;
}

vec4 map(vec4 a,vec4 b,vec4 c,vec4 d,vec4 t)
{
    vec4 v=(t-a)/(b-a)*(d-c)+c;
    return v;
}

#pragma glslify:export(map)