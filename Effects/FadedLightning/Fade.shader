shader_type canvas_item;

uniform vec2 epicenter;

uniform float max_time = 0.05;

uniform float start_time = 0;
uniform float max_dist = 10;


void fragment()
{
//	vec2 pix_coord = vec2(FRAGCOORD.x,FRAGCOORD.y);
//	float dist_from_crack_center = abs(length(pix_coord - crack_center));
//	float whiteness = clamp(dist_from_crack_center / max_dist,0.0,0.99);
//	whiteness = pow(whiteness, .9);
//	vec2 whiteness = UV - vec2(size);
//	whiteness = whiteness / 2.0;
//	whiteness = 0.25;
	vec4 color = texture(TEXTURE,UV);
	color.a = (max_time - clamp(TIME - start_time, 0, max_time)  ) / max_time;
	COLOR = color;
}
