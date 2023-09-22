shader_type canvas_item;

uniform float skew_amount : hint_range(1.0, -1.0);

void vertex() {
    VERTEX.y += VERTEX.x * skew_amount;
}
