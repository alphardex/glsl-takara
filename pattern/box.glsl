float box(vec2 st,float size){
    size=.5+size*.5;
    st=step(st,vec2(size))*step(1.-st,vec2(size));
    return st.x*st.y;
}

#pragma glslify:export(box)
