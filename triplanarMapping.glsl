vec3 blendNormal(vec3 normal){
    vec3 blending=abs(normal);
    blending=normalize(max(blending,.00001));
    blending/=vec3(blending.x+blending.y+blending.z);
    return blending;
}

// https://gamedevelopment.tutsplus.com/articles/use-tri-planar-texture-mapping-for-better-terrain--gamedev-13821
vec3 triplanarMapping(sampler2D tex,vec3 normal,vec3 position){
    vec3 normalBlend=blendNormal(normal);
    vec3 xColor=texture(tex,position.yz).rgb;
    vec3 yColor=texture(tex,position.xz).rgb;
    vec3 zColor=texture(tex,position.xy).rgb;
    return(xColor*normalBlend.x+yColor*normalBlend.y+zColor*normalBlend.z);
}

#pragma glslify:export(triplanarMapping)