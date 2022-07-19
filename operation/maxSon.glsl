float maxSon(vec2 v){
    return max(v.x,v.y);
}

float maxSon(vec3 v){
    return max(v.x,max(v.y,v.z));
}

#pragma glslify:export(maxSon)