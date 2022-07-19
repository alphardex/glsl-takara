float heart(vec2 p){
    p-=vec2(.5,.38);
    p*=vec2(2.1,2.8);
    return pow(p.x,2.)+pow(p.y-sqrt(abs(p.x)),2.);
}

#pragma glslify:export(heart)
