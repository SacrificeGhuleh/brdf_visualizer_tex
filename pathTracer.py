def trace(ray):
  if sampleLight:
    sampleLight = False
    return sampleRandomLight()
  else
    sampleLight = True
    # Russian roulette
    if currentRecursion > 2 and (albedo * 0.95) <= rng():
    return 0

    if material.isLight():
      return material.emission

    omegaI, pdf = sample(normal)
    brdf = getBrdf(omegaI, normal)
    newHit = generateRay(worldPos, omegaI)
    Li = trace(newHit, currentRecursion + 1)
    return Li * brdf * dot(omegaI, normal) / (pdf * (albedo * 0.95))
