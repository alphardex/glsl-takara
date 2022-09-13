float blendScreen(float base,float blend){
    return 1.-((1.-base)*(1.-blend));
}

vec3 blendScreen(vec3 base,vec3 blend){
    return vec3(blendScreen(base.r,blend.r),blendScreen(base.g,blend.g),blendScreen(base.b,blend.b));
}

vec3 blendScreen(vec3 base,vec3 blend,float opacity){
    return(blendScreen(base,blend)*opacity+base*(1.-opacity));
}

vec4 blendScreen(vec4 base,vec4 blend){
    return 1.-((1.-base)*(1.-blend));
}

#pragma glslify:export(blendScreen)