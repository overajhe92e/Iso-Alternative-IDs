SMODS.DynaTextEffect {
    key = "tremble",
    func = function(dynatext, index, letter)
        letter.offset = { 
            x = math.ceil(math.cos(10*G.TIMERS.REAL*index)*1.5),
            y = math.floor(math.sin(65*(G.TIMERS.REAL*index))*3)
        }
    end,
}

SMODS.DynaTextEffect {
    key = "waaavy",
    func = function(dynatext, index, letter)
      letter.offset = {
        x = math.tan(5*G.TIMERS.REAL+index)*3,
        y = math.tan(5*G.TIMERS.REAL+index)*20
      }
    end
}

SMODS.DynaTextEffect {
    key = "waveYaxisonly",
    func = function(dynatext, index, letter)
      letter.offset = {
        x = 0,
        y = math.sin(5*G.TIMERS.REAL+index)*8
      }
    end
}

--[[
SMODS.DynaTextEffect {
  key = "some_key",
  func = function(dynatext, index, letter)
    -- This function runs on each letter, every >>frame<<
    -- Recommended to use G.TIMERS.REAL and math.sin and math.cos functions
    -- but anything goes
  end
}

-- dynatext <- {DynaText} -- as in, the object itself that's created from the function DynaText{}
-- index    <- <INTEGER> -- the position of the current letter in dynatext.strings[1].letters
-- letter   <- {DynaTextLetter}

-- DynaTextLetter has the following accessible properties:
local dynatextletter = {
  pop_in = '<NUMBER>', -- How the letter pops in gradually
  r      = '<NUMBER>', -- Rotation of the letter (unit radians)
  scale  = '<NUMBER>', -- Normal size = 1
  dims   = {x = '<INTEGER>', y = '<<INTEGER>'}, -- Bounding box; changes spacing between letters
  offset = {x = '<INTEGER>', y = '<<INTEGER>'}, -- Relative to entire DynaText object
  colour = '{BalatroColour}', -- as in G.C.RED etc.
  letter = '{love.graphics.Text}', -- see https://love2d.org/wiki/Text for more information
}
]]