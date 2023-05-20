#version 330

layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;

out vec4 mpos;
uniform mat4 proj, model, view;

void main() {
  mpos = model * vec4(pos, 1.0);
  gl_Position = proj * view * mpos;
}
