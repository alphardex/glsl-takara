const float gamma=2.2;

float toGamma(float v){
    return pow(v,1./gamma);
}

vec2 toGamma(vec2 v){
    return pow(v,vec2(1./gamma));
}

vec3 toGamma(vec3 v){
    return pow(v,vec3(1./gamma));
}

vec4 toGamma(vec4 v){
    return vec4(toGamma(v.rgb),v.a);
}

#pragma glslify:export(toGamma)