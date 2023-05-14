float steppedVal(float v,float steps){
    return floor(v*steps)/steps;
}

#pragma glslify:export(steppedVal)