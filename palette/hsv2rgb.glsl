vec3 hsv2rgb(in vec3 hsb){
    vec3 rgb=clamp(abs(mod(hsb.x*6.+vec3(0.,4.,2.),6.)-3.)-1.,0.,1.);
    rgb=rgb*rgb*(3.-2.*rgb);
    return hsb.z*mix(vec3(1.),rgb,hsb.y);
}

#pragma glslify:export(hsv2rgb)