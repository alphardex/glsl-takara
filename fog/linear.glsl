float fogFactorLinear(
    const float dist,
    const float start,
    const float end
){
    return 1.-clamp((end-dist)/(end-start),0.,1.);
}

#pragma glslify:export(fogFactorLinear)