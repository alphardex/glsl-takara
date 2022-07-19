float hypot(vec2 p){
    return sqrt(p.x*p.x+p.y*p.y);
}

#pragma glslify:export(hypot)