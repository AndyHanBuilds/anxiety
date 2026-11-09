// Sunset waves
// Change a number. Watch it move.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;

  vec3 sky = vec3(0.1, 0.05, 0.3);

  float t = iTime * 0.6;
  float bend = atan(uv.x * 80.0) * 0.05;
  float h = uv.y + bend;

  vec3 col = sky;
  col *= 0.8 + cos(h * 60.0 - t * 6.0);
  fragColor = vec4(col, 1.0);
}
