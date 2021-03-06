#version 150

uniform mat4 u_projectionMatrix;
uniform mat4 u_viewMatrix;
uniform mat4 u_modelMatrix;
uniform mat3 u_normalMatrix;

in vec4 a_vertex;
in vec3 a_normal;

out vec3 v_normal;
out vec3 v_eye;

void main(void)
{
	vec4 vertex = u_viewMatrix*u_modelMatrix*a_vertex;

	v_eye = -vec3(vertex);

	v_normal = u_normalMatrix*a_normal;

	gl_Position = u_projectionMatrix*vertex;
}
