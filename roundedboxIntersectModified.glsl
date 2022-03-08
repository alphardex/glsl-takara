float capIntersect(in vec3 ro,in vec3 rd,in vec3 pa,in vec3 pb,in float ra)
{
    vec3 ba=pb-pa;
    vec3 oa=ro-pa;
    float baba=dot(ba,ba);
    float bard=dot(ba,rd);
    float baoa=dot(ba,oa);
    float rdoa=dot(rd,oa);
    float oaoa=dot(oa,oa);
    float a=baba-bard*bard;
    float b=baba*rdoa-baoa*bard;
    float c=baba*oaoa-baoa*baoa-ra*ra*baba;
    float h=b*b-a*c;
    if(h>=0.)
    {
        float t=(-b-sqrt(h))/a;
        float y=baoa+t*bard;
        // body
        if(y>0.&&y<baba)return t;
        // caps
        vec3 oc=(y<=0.)?oa:ro-pb;
        b=dot(rd,oc);
        c=dot(oc,oc)-ra*ra;
        h=b*b-c;
        if(h>0.)return-b-sqrt(h);
    }
    return 1e15;
}

float roundedboxIntersectModified(in vec3 rayOrigin,in vec3 rayDirection,in vec3 size,in float rad){
    // bounding box
    vec3 m=1./rayDirection;
    vec3 n=m*rayOrigin;
    vec3 k=abs(m)*(size+rad);
    vec3 t1=-n-k;
    vec3 t2=-n+k;
    float tN=max(max(t1.x,t1.y),t1.z);
    float tF=min(min(t2.x,t2.y),t2.z);
    if(tN>tF||tF<0.){
        return 1e15;
    }
    float t=tN;
    
    // convert to first octant
    vec3 pos=rayOrigin+t*rayDirection;
    vec3 s=sign(pos);
    vec3 ro=rayOrigin*s;
    vec3 rd=rayDirection*s;
    pos*=s;
    
    // faces
    pos-=size;
    pos=max(pos.xyz,pos.yzx);
    if(min(min(pos.x,pos.y),pos.z)<0.){
        return t;
    }
    
    t=capIntersect(ro,rd,vec3(size.x,-size.y,size.z),vec3(size.x,size.y,size.z),rad);
    t=min(t,capIntersect(ro,rd,vec3(size.x,size.y,-size.z),vec3(size.x,size.y,size.z),rad));
    t=min(t,capIntersect(ro,rd,vec3(-size.x,size.y,size.z),vec3(size.x,size.y,size.z),rad));
    
    return t;
}
#pragma glslify:export(roundedboxIntersectModified)