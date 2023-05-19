// https://learnopengl.com/Lighting/Basic-Lighting

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

#pragma glslify:export(saturate)
