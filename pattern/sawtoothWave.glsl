float sawtoothWave(float x){
    return sin(x+sin(x+sin(x)*.5));
}

#pragma glslify:export(sawtoothWave)
