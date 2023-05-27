uniform float uTime;
uniform sampler2D texture1;

varying vec2 vUv;
varying vec3 vPosition;

float PI = 3.141592653589793238;
// const float PI = 3.141592653589793238;

void main() {
    vUv = uv;
    vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
    gl_PointSize = 1000. * (1.0 / -mvPosition.z);
    gl_Position = projectionMatrix * mvPosition;
}
