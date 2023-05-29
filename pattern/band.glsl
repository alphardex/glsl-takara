float band(float t,float start,float end,float blur){
    float step1=smoothstep(start-blur,start+blur,t);
    float step2=smoothstep(end+blur,end-blur,t);
    return step1*step2;
}

#pragma glslify:export(band)
