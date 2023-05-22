float steppedVal(float v,float steps){
    return floor(v*steps)/steps;
}

vec2 steppedVal(vec2 v,float steps){
    return floor(v*steps)/steps;
}

#pragma glslify:export(steppedVal)