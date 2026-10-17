shader_type canvas_item;

uniform vec4 body_color : source_color = vec4(vec3(0.5),1.0);

const vec4 button_color = vec4(vec3(
	68.0 / 255.0,
	72.0 / 255.0,
	76.0 / 255.0
), 1.0);

const vec4 button_outer_color = vec4(vec3(
	153.0 / 255.0,
	149.0 / 255.0,
	149.0 / 255.0
), 1.0);

void fragment() {
	vec4 color = texture(TEXTURE,UV);
	COLOR = vec4(0.0);
	COLOR.a = color.a;
	if (color.g > 0.1) COLOR += body_color * color.g;
	if (color.r > 0.1) COLOR += button_color * color.r;
	if (color.b > 0.1) COLOR += button_outer_color * color.b;
}
