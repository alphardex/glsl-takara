// https://github.com/Samsy/glsl-screenspace
vec2 screenspace(mat4 projectionmatrix,mat4 modelviewmatrix,vec3 position){
    vec4 temp=projectionmatrix*modelviewmatrix*vec4(position,1.);
    temp.xyz/=temp.w;
    temp.xy=(.5)+(temp.xy)*.5;
    return temp.xy;
}

#pragma glslify:export(screenspace)