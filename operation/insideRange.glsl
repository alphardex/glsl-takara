float insideRange(float v,float bottom,float top){
    return step(bottom,v)-step(top,v);
}

#pragma glslify:export(insideRange)