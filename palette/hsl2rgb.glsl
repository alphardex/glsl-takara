// https://github.com/Jam3/glsl-hsl2rgb/blob/master/index.glsl
float hue2rgb(float f1,float f2,float hue){
    if(hue<0.)
    hue+=1.;
    else if(hue>1.)
    hue-=1.;
    float res;
    if((6.*hue)<1.)
    res=f1+(f2-f1)*6.*hue;
    else if((2.*hue)<1.)
    res=f2;
    else if((3.*hue)<2.)
    res=f1+(f2-f1)*((2./3.)-hue)*6.;
    else
    res=f1;
    return res;
}

vec3 hsl2rgb(vec3 hsl){
    vec3 rgb;
    
    if(hsl.y==0.){
        rgb=vec3(hsl.z);// Luminance
    }else{
        float f2;
        
        if(hsl.z<.5)
        f2=hsl.z*(1.+hsl.y);
        else
        f2=hsl.z+hsl.y-hsl.y*hsl.z;
        
        float f1=2.*hsl.z-f2;
        
        rgb.r=hue2rgb(f1,f2,hsl.x+(1./3.));
        rgb.g=hue2rgb(f1,f2,hsl.x);
        rgb.b=hue2rgb(f1,f2,hsl.x-(1./3.));
    }
    return rgb;
}

vec3 hsl2rgb(float h,float s,float l){
    return hsl2rgb(vec3(h,s,l));
}

#pragma glslify:export(hsl2rgb)