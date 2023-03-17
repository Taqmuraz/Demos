layout (location = 0) in vec3 position;
layout (location = 1) in vec2 textureCoords;
layout (location = 2) in vec3 normal;
layout (location = 3) in JOINT_VEC weights;
layout (location = 4) in JOINT_VEC joints;

out vec2 uv;
out vec3 surfaceNormal;

const int MAX_TRANSFORMS = 100;

uniform float time;
uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 jointTransforms[MAX_TRANSFORMS];

void main ()
{
	uv = textureCoords;

	vec3 totalPos = vec3(0);
	vec3 totalNormal = vec3(0);

	for (int i = 0; i < 3; i++)
	{
		int j = int(joints[i]);
		if (j != -1)
		{
			totalPos += (jointTransforms[j] * vec4(position, 1)).xyz * weights[i];
			totalNormal += (jointTransforms[j] * vec4(normal, 0)).xyz * weights[i];
		}
	}
	surfaceNormal = normalize(totalNormal);
	
	gl_Position = projectionMatrix * viewMatrix * vec4(totalPos, 1);
}


