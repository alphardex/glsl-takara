// https://learnopengl.com/Lighting/Basic-Lighting

float saturate(float a){
    return clamp(a,0.,1.);
}

float specular(vec3 n,vec3 l,float shininess){
    float spec=pow(saturate(dot(n,l)),shininess);
    return spec;
}

#pragma glslify:export(specular)
