#version 330 core

in vec2 texcoord;

uniform sampler2D texture_diffuse;

layout(location = 0) out vec3 color;

void main()
{
    color = texture(texture_diffuse, texcoord).rgb;
}