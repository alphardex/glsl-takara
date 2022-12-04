float luma(vec3 color){
    return dot(color,vec3(.299,.587,.114));
}

float luma(vec4 color){
    return dot(color.rgb,vec3(.299,.587,.114));
}

#pragma glslify:export(luma)