// https://stackoverflow.com/questions/13501081/efficient-bicubic-filtering-code-in-glsl
vec4 sampleBicubic(float v){
    vec4 n=vec4(1.,2.,3.,4.)-v;
    vec4 s=n*n*n;
    vec4 o;
    o.x=s.x;
    o.y=s.y-4.*s.x;
    o.z=s.z-4.*s.y+6.*s.x;
    o.w=6.-o.x-o.y-o.z;
    return o;
}

vec4 sampleBicubic(sampler2D tex,vec2 st,vec2 texResolution){
    vec2 pixel=1./texResolution;
    st=st*texResolution-.5;
    
    vec2 fxy=fract(st);
    st-=fxy;
    
    vec4 xcubic=sampleBicubic(fxy.x);
    vec4 ycubic=sampleBicubic(fxy.y);
    
    vec4 c=st.xxyy+vec2(-.5,1.5).xyxy;
    
    vec4 s=vec4(xcubic.xz+xcubic.yw,ycubic.xz+ycubic.yw);
    vec4 offset=c+vec4(xcubic.yw,ycubic.yw)/s;
    
    offset*=pixel.xxyy;
    
    vec4 sample0=texture(tex,offset.xz);
    vec4 sample1=texture(tex,offset.yz);
    vec4 sample2=texture(tex,offset.xw);
    vec4 sample3=texture(tex,offset.yw);
    
    float sx=s.x/(s.x+s.y);
    float sy=s.z/(s.z+s.w);
    
    return mix(mix(sample3,sample2,sx),mix(sample1,sample0,sx),sy);
}

#pragma glslify:export(sampleBicubic)