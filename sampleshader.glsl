void main(void){
  const vec3 normal = vec3(0, 0, 1);
          
  const vec3 normPos = normalize(in_Position);
  const vec3 normIncident = normalize(u_incidentVector);
            
  float brdf = BRDF(normIncident, normPos, normal);
  const vec3 newPos = normPos * brdf;          
  gl_Position = u_projMat * u_viewMat * u_modelMat * vec4(newPos, 1.0);
}