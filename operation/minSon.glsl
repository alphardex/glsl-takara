float minSon(vec2 v)
{
    return min(v.x,v.y);
}

float minSon(vec3 v)
{
    return min(v.x,min(v.y,v.z));
}

#pragma glslify:export(minSon)