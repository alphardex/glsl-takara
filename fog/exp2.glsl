float fogFactorExp2(
    const float dist,
    const float density
){
    const float LOG2=-1.442695;
    float d=density*dist;
    return 1.-clamp(exp2(d*d*LOG2),0.,1.);
}

#pragma glslify:export(fogFactorExp2)