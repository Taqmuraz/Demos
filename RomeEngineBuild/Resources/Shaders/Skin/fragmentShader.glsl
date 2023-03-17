in vec2 uv;
in vec3 surfaceNormal;

out vec4 out_Color;

uniform sampler2D textureSampler;
uniform vec4 textureColor;
uniform vec4 lightColor;
uniform vec3 lightDirection;
uniform float ambienceIntencivity;
uniform float lightIntencivity;

void main (void)
{
	vec4 clr = texture(textureSampler, uv);
	
	float nDotl = dot (surfaceNormal, -lightDirection);
	
	out_Color = clr + ((nDotl < 0.0) ? vec4(nDotl, nDotl, nDotl, 0) : lightColor * nDotl) * lightIntencivity + lightColor * ambienceIntencivity;
}


