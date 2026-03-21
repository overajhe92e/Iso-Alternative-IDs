SMODS.Atlas {
    key = "oxidyze",
    path = "oxidyze.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
}

SMODS.Scoring_Calculation {
    key = "logmultexpo",
    func = function(self, chips, mult, flames)
        return chips ^ (math.log(mult) ^ 0.75)
    end,
    text = '^',             -- controls the UI symbol displayed between the chips and mult box
    colour = G.C.DARK_EDITION, -- sets the UI symbol to be blue
    replace_ui = function(self)
        local scale = 0.3
        return
        {
            n = G.UIT.R,
            config = { align = "cm", minh = 1, padding = 0.1 },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_chips' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'chips',
                            text = 'chip_text',
                            align = 'cr',
                            w = 1.1,
                            scale = scale
                        })
                    }
                },
                SMODS.GUI.operator(scale * 0.75),
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_mult' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'mult',
                            align = 'cm',
                            w = 1.1,
                            scale = scale
                        })
                    }
                }
            }
        }
    end

}
