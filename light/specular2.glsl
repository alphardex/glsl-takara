float saturate(float a){
    return clamp(a,0.,1.);
}

float specular2(vec3 n,vec3 l,float shininess){
    float spec=pow(saturate(pow(dot(n,l),2.)),shininess);
    return spec;
}

#pragma glslify:export(specular2)
