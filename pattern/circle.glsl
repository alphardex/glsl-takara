float circle(vec2 st,float r){
    vec2 dist=st-vec2(.5);
    return 1.-smoothstep(r-(r*1.15),r,dot(dist,dist)*4.);
}

float circle(vec2 st,float r,float blur,float scale){
    float d=length(st);
    float c=1.-smoothstep(r-r*blur,r+r*blur,d/scale);
    return c;
}

#pragma glslify:export(circle)
