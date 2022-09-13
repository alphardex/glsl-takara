// https://gist.github.com/patriciogonzalezvivo/670c22f3966e662d2f83#generic-123-noise
float rand(float n){return fract(sin(n)*43758.5453123);}

float rand(vec2 n){
    return fract(sin(dot(n,vec2(12.9898,4.1414)))*43758.5453);
}

float noise(float p){
    float fl=floor(p);
    float fc=fract(p);
    return mix(rand(fl),rand(fl+1.),fc);
}

float noise(vec2 n){
    const vec2 d=vec2(0.,1.);
    vec2 b=floor(n),f=smoothstep(vec2(0.),vec2(1.),fract(n));
    return mix(mix(rand(b),rand(b+d.yx),f.x),mix(rand(b+d.xy),rand(b+d.yy),f.x),f.y);
}

#pragma glslify:export(noise)