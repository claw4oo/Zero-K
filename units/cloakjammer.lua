unitDef = {
  unitname               = [[cloakjammer]],
  name                   = [[Iris]],
  description            = [[Area Cloaker/Jammer Walker]],
  acceleration           = 0.25,
  activateWhenBuilt      = true,
  brakeRate              = 0.75,
  buildCostMetal         = 600,
  buildPic               = [[cloakjammer.png]],
  canMove                = true,
  category               = [[LAND UNARMED]],
  corpse                 = [[DEAD]],

  customParams           = {

    morphto = [[staticjammer]],
    morphtime = 30,

    area_cloak = 1,
    area_cloak_upkeep = 15,
    area_cloak_radius = 440,
    area_cloak_decloak_distance = 75,
    
    priority_misc = 2, -- High
    cus_noflashlight = 1,
  },

  energyUse              = 1.5,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[kbotjammer]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 600,
  maxSlope               = 36,
  maxVelocity            = 1.9,
  minCloakDistance       = 180,
  movementClass          = [[AKBOT2]],
  objectName             = [[spherecloaker.s3o]],
  onoffable              = true,
  pushResistant          = 0,
  script                 = [[cloakjammer.lua]],
  radarDistanceJam       = 440,
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 400,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  turnRate               = 2100,

  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[eraser_d.dae]],
    },

    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

}

return lowerkeys({ cloakjammer = unitDef })
