// https://www.shadertoy.com/view/4s2GRR
vec2 getFishEyeUv(vec2 uv,vec2 center,float distortionPower){
    vec2 p=uv;
    float prop=uv.x/uv.y;//screen proroption
    vec2 m=center;//center coords
    vec2 d=p-m;//vector from center to current fragment
    float r=sqrt(dot(d,d));// distance of pixel from center
    
    float power=(2.*3.141592/(2.*sqrt(dot(center,center))))*distortionPower;//amount of effect
    
    float bind;//radius of 1:1 effect
    if(power>0.)bind=sqrt(dot(m,m));//stick to corners
    else{if(prop<1.)bind=m.x;else bind=m.y;}//stick to borders
    
    //Weird formulas
    vec2 finalUv;
    if(power>0.)//fisheye
    finalUv=m+normalize(d)*tan(r*power)*bind/tan(bind*power);
    else if(power<0.)//antifisheye
    finalUv=m+normalize(d)*atan(r*-power*10.)*bind/atan(-power*bind*10.);
    else finalUv=p;//no effect for power = 1.0
    return finalUv;
}

#pragma glslify:export(getFishEyeUv)