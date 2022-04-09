float fogFactorExp(
    const float dist,
    const float density
){
    return 1.-clamp(exp(-density*dist),0.,1.);
}

#pragma glslify:export(fogFactorExp)