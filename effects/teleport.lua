return {
  ["teleport_huge"] = {
    cloud = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        airdrag            = .9,
        colormap           = [[.9 .9 1 .1   .2 .2 1 .1   0 0 0 0]],
        emitrot            = 0,
        emitrotspread      = 180,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 45,
        particlelifespread = 5,
        particlesize       = 450,
        particlesizespread = 50,
        particlespeed      = 0,
        particlespeedspread = 3,
        pos                = [[0, 0, 0]],
        sizegrowth         = 40,
        sizemod            = .95,
        texture            = [[smoke1]],
      },
    },
    ring = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        colormap           = [[.8 .8 1 .1   .2 .2 1 .1   0 0 0 0]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[shockwave]],
        length             = 1,
        pos                = [[0, 0, 0]],
        sidetexture        = [[null]],
        size               = 3,
        sizegrowth         = 900,
        ttl                = 40,
      },
    },
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 8,
      flashalpha         = 1,
      flashsize          = 1000,
      ttl                = 50, --180,
      color = {
        [1]  = 0.2,
        [2]  = 0.2,
        [3]  = 0.8,
      },
    },
	
  },
  

}

