in vec3 position;
in vec2 textureCoords;

out vec2 uv;

uniform vec4 vertexRect;
uniform float depth;

void main ()
{
	uv = textureCoords;
	gl_Position = vec4(vertexRect.x + position.x * vertexRect.z, vertexRect.y + position.y * vertexRect.w, depth, 1.0);
}


