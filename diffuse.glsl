// https://learnopengl.com/Lighting/Basic-Lighting

float saturate(float a){
    return clamp(a,0.,1.);
}

float diffuse(vec3 n,vec3 l){
    float diff=saturate(dot(n,l));
    return diff;
}

#pragma glslify:export(diffuse)
