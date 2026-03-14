SMODS.DynaTextEffect {
    key = "tremble",
    func = function(dynatext, index, letter)
        letter.offset = { 
            x = math.floor(math.cos(15*G.TIMERS.REAL+index)*2),
            y = math.floor(math.sin(105*(G.TIMERS.REAL+index))*7)
        }
    end,
}

SMODS.DynaTextEffect {
    key = "blacksilence",
    func = function(dynatext, index, letter)
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