shader_type canvas_item;

uniform float skew_amount : hint_range(-1.0, 1.0);
uniform float trail_intensity : hint_range(0, 1) = 0.95;

void vertex() {
    VERTEX.y += VERTEX.x * skew_amount;
}

void fragment() {
    COLOR.a *= trail_intensity;
}
