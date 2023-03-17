in vec3 position;
in vec2 textureCoords;
in vec3 normal;

out vec2 uv;
out vec3 surfaceNormal;

uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

void main ()
{
	uv = textureCoords;
	
	vec4 surfaceNormal4 = transformationMatrix * vec4(normal.x, normal.y, normal.z, 0.0);
	surfaceNormal = normalize(vec3(surfaceNormal4.x, surfaceNormal4.y, surfaceNormal4.z));
	
	gl_Position = projectionMatrix * viewMatrix * transformationMatrix * vec4(position, 1);
}


