mat3 rotation3dX(float angle){
    float s=sin(angle);
    float c=cos(angle);
    
    return mat3(
        1.,0.,0.,
        0.,c,s,
        0.,-s,c
    );
}

vec3 rotateX(vec3 v,float angle){
    return rotation3dX(angle)*v;
}

#pragma glslify:export(rotateX)
