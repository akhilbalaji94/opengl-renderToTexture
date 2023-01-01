#version 330 core
layout(location=0) in vec3 pos;
layout(location=1) in vec3 norm;
layout(location=2) in vec2 txc;
uniform mat4 mvp;
uniform mat4 mv;
uniform mat3 mv_3x3_it;

out vec3 view_pos;
out vec3 view_normal;
out vec2 texcoord;

void main()
{
    gl_Position = mvp * vec4(pos, 1.0);

    view_pos = (mv * vec4(pos, 1.0)).xyz;
    view_normal = mv_3x3_it * norm;
    texcoord = txc;

}