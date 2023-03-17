in vec2 uv;

out vec4 out_Color;

uniform vec4 textRect;
uniform vec4 textureColor;
uniform sampler2D textureSampler;

void main (void)
{
	vec2 textUV = vec2(textRect.x + uv.x * textRect.z, textRect.y + uv.y * textRect.w);
	vec4 clr = texture(textureSampler, textUV);
	
	if (clr.a < 0.1) { discard; }

	out_Color = clr * textureColor;
}


