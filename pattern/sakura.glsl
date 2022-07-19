float sakura(float x){
    return min(abs(cos(x*2.5))+.4,
    abs(sin(x*2.5))+1.1)*.32;
}

#pragma glslify:export(sakura)