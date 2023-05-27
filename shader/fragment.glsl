uniform float uTime;
// uniform float progress;
// uniform sampler2D texture1;
uniform vec4 resolution;
uniform vec3 uColor;
uniform float uSpeed;

varying vec2 vUv;
varying vec3 vPosition;

float PI = 3.141592653589793238;
// const float PI = 3.141592653589793238;

void main() {
    // vec2 newUV = (vUv - vec2(0.5)) * resolution.zw + vec2(0.5);
    // float dash = sin(vUv.x * 50.0 + uTime / 2.0 * uSpeed);
    float dash = sin(vUv.x * 50.0 + uTime / 2.0);
    if(dash < 0.99) discard;
    // vec3 c = mix(vec3(0.0), uColor, step(0.0, dash/abs(dash)));
    // float flag = step(0.0, dash/abs(dash));
    // if(flag < 0.01) discard;


    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
    gl_FragColor = vec4(vUv, 0.0, 1.0);
    gl_FragColor = vec4(uColor, 1.0);
    // gl_FragColor = vec4(c, 1.0);
}