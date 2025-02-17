return {
  ["bull_flash"] = {
    usedefaultexplosions    = false,

    groundflash = {
      circlealpha           = 0.8,
      circlegrowth          = 0,
      flashalpha            = 1,
      flashsize             = 125,
      ttl                   = 310,
      color = {
        [1]                 = 0.2,
        [2]                 = 0.8,
        [3]                 = 0.1,
      },
    },
  },


  ["bull_fade"] = {
    usedefaultexplosions    = false,
    galifading = {
      air                   = true,
      class                 = [[CExploSpikeProjectile]],
      count                 = 4,
      ground                = true,
      water                 = true,
      properties = {
        length              = 55,
        width               = 86,
        alpha               = 0.45,
        alphaDecay          = 0.0046,
        lengthGrowth        = -25,
        dir                 = [[0,1.5 1.2r, 0]],
        color               = [[0.2, 0.8, 0.15]],
      },
    },
    sphere = {
      air                   = true,
      class                 = [[CSpherePartSpawner]],
      count                 = 1,
      ground                = true,
      water                 = true,
      properties = {
        alpha               = 0.2,
        color               = [[0,0.5,0.1]],
        expansionspeed      = 8,
        ttl                 = 40,
      },
    },
    --debris1 = {
    --  air                   = true,
    --  class                 = [[CSimpleParticleSystem]],
    --  count                 = 3,
    --  ground                = true,
    --  water                 = true,
    --  properties = {
    --    airdrag             = 0.98,
    --    alwaysvisible       = true,
    --    colormap            = [[0.1 0.18 0.15 1   0.12 0.18 0.15 1	 0 0 0 0.01]],
    --    directional         = true,
    --    emitrot             = 0,
    --    emitrotspread       = 90,
    --    emitvector          = [[0, 1, 0]],
    --    gravity             = [[0, -0.2, 0]],
    --    numparticles        = 5,
    --    particlelife        = [[50 i-0.5]],
    --    particlelifespread  = 0,
    --    particlesize        = [[10 r10]],
    --    particlesizespread  = 0,
    --    particlespeed       = 3,
    --    particlespeedspread = 1,
    --    pos                 = [[0, 0, 0]],
    --    sizegrowth          = [[-0.1 i0.015]],
    --    sizemod             = 1.0,
    --    texture             = [[debris2]],
    --  },
    --},
    debris2 = {
      air                   = true,
      class                 = [[CSimpleParticleSystem]],
      count                 = 5,
      ground                = true,
      water                 = true,
      properties = {
        airdrag             = 0.98,
        alwaysvisible       = true,
        colormap            = [[0.12 0.18 0.15 1   0.12 0.18 0.15 1	 0 0 0 0.01]],
        directional         = true,
        emitrot             = 0,
        emitrotspread       = 60,
        emitvector          = [[0, 1, 0]],
        gravity             = [[0, -0.4, 0]],
        numparticles        = 10,
        particlelife        = 150,
        particlelifespread  = 35,
        particlesize        = [[1 r10]],
        particlesizespread  = 18,
        particlespeed       = 8,
        particlespeedspread = 6,
        pos                 = [[0, 0, 0]],
        sizegrowth          = 0,
        sizemod             = 1.0,
        texture             = [[debris2]],
      },
    },
    dirt1 = {
      air                   = true,
      class                 = [[CSimpleParticleSystem]],
      count                 = 1,
      ground                = true,
      water                 = true,
      properties = {
        airdrag             = 0.8,
        alwaysvisible       = true,
        colormap            = [[0.4 0.6 0 0.1	0.2 0.4 0 0.1  0 0 0 0.01]],
        directional         = true,
        emitrot             = 0,
        emitrotspread       = 25,
        emitvector          = [[0, 1, 0]],
        gravity             = [[0, 0, 0]],
        numparticles        = 40,
        particlelife        = 18.5,
        particlelifespread  = 5,
        particlesize        = 1.5,
        particlesizespread  = 3,
        particlespeed       = 2,
        particlespeedspread = 19,
        pos                 = [[0, 2, 0]],
        sizegrowth          = 3,
        sizemod             = 1.0,
        texture             = [[dirtplosion2]],
      },
    },
    dirt2 = {
      air                   = true,
      class                 = [[CSimpleParticleSystem]],
      count                 = 0,
      ground                = true,
      water                 = true,
      properties = {
        airdrag             = 0.8,
        alwaysvisible       = true,
        colormap            = [[0.1 0.1 0 0.1	 0 0 0 0.01]],
        directional         = true,
        emitrot             = 0,
        emitrotspread       = 25,
        emitvector          = [[0, 1, 0]],
        gravity             = [[0, 0, 0]],
        numparticles        = 35,
        particlelife        = 8.5,
        particlelifespread  = 5,
        particlesize        = 1.5,
        particlesizespread  = 3,
        particlespeed       = 4,
        particlespeedspread = 19,
        pos                 = [[0, 2, 0]],
        sizegrowth          = 3,
        sizemod             = 1.0,
        texture             = [[dirtplosion2]],
      },
    },
    dirt3 = {
      air                   = true,
      class                 = [[CSimpleParticleSystem]],
      count                 = 10,
      ground                = true,
      water                 = true,
      properties = {
        airdrag             = 0.8,
        alwaysvisible       = true,
        colormap            = [[0 0 0 0.01  0.4 0.4 0.4 1	 0 0 0 0.01]],
        directional         = true,
        emitrot             = 0,
        emitrotspread       = 25,
        emitvector          = [[0, 1, 0]],
        gravity             = [[0, -0.2, 0]],
        numparticles        = 1,
        particlelife        = 80,
        particlelifespread  = 5,
        particlesize        = 1.5,
        particlesizespread  = 3,
        particlespeed       = 5,
        particlespeedspread = 24,
        pos                 = [[0, 2, 0]],
        sizegrowth          = 1,
        sizemod             = 1.0,
        texture             = [[kfoam]],
      },
    },
    vapor = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 50,
      ground             = true,
      water              = true,
      properties = {
        delay              = [[5 r200]],
        explosiongenerator = [[custom:GREEN_VAPOR]],
        pos                = [[-140 r280, 1, -140 r280]],
      },
    },
  },

  ["bullsplode"] = {
    usedefaultexplosions    = false,
    boom = {
      air                   = true,
      class                 = [[CExpGenSpawner]],
      count                 = 1,
      ground                = true,
      water                 = true,
      properties = {
        delay               = 0,
        explosiongenerator  = [[custom:bull_fade]],
        pos                 = [[0,-20,0]],
      },
    },
    flash = {
      air                   = true,
      class                 = [[CExpGenSpawner]],
      count                 = 1,
      ground                = true,
      water                 = true,
      properties = {
        delay               = 15,
        explosiongenerator  = [[custom:bull_flash]],
        pos                 = [[0,-30,0]],
      },
    },
    dirt = {
      air                   = true,
      class                 = [[CExpGenSpawner]],
      count                 = 1,
      ground                = true,
      water                 = true,
      properties = {
        delay               = 10,
        explosiongenerator  = [[custom:dirt]],
        pos                 = [[0,5,0]],
      },
    },
  },

  ["green_vapor"] = {
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 0,
      flashalpha         = 0.4,
      flashsize          = 15,
      ttl                = 25,
      color = {
        [1]  = 0.3,
        [2]  = 0.4,
        [3]  = 0.0,
      },
    },
    vapor_particle = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 0 0 0.01 0.2 0.4 0.05 0.01 0 0 0 0.01]],
        directional        = true,
        emitrot            = 80,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.15, 0]],
        numparticles       = 1,
        particlelife       = 18,
        particlelifespread = 6,
        particlesize       = 8,
        particlesizespread = 3,
        particlespeed      = 0.01,
        particlespeedspread = 0,
        pos                = [[-10 r20, 1.0, -10 r20]],
        sizegrowth         = -0.3,
        sizemod            = 1.0,
        texture            = [[dirt]],
      },
    },
  },
}
