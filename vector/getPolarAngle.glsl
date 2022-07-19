float getPolarAngle(vec2 st){
    return atan(st.y,st.x);
}

#pragma glslify:export(getPolarAngle)