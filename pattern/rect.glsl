float band(float t,float start,float end,float blur){
    float step1=smoothstep(start-blur,start+blur,t);
    float step2=smoothstep(end+blur,end-blur,t);
    return step1*step2;
}

float rect(vec2 uv,float left,float right,float bottom,float top,float blur){
    float band1=band(uv.x,left,right,blur);
    float band2=band(uv.y,bottom,top,blur);
    return band1*band2;
}

#pragma glslify:export(rect)
