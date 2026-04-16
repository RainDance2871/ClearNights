if ClearNights.config.decks then SMODS.Back {
	key = 'excavation',
  atlas = 'Decks',
  unlocked = true,
  discovered = true,
	pos = ClearNights.GetDeckAtlasTable('excavation'),
  
  config = { 
    start_ante = 0,
    joker_slot = -5
  },
  
  loc_vars = function(self, info_queue, back)
    return { 
      vars = {
        self.config.start_ante
      } 
    }
  end,
  
  apply = function(self, back)
    G.GAME.CN_excavation = true
    G.GAME.round_resets.ante = self.config.start_ante
    G.GAME.round_resets.blind_ante = self.config.start_ante
  end,
  
  calculate = function(self, back, context)
    if context.starting_shop and (G.GAME.CN_excavate_used or 0) < 5 then
      SMODS.add_voucher_to_shop('v_ClearNights_excavate', true)
    end
  end
} end

--block buying buffoon packs if player has no joker slots
local can_open_ref = G.FUNCS.can_open
G.FUNCS.can_open = function(e)
  local ret = can_open_ref(e)
  if G.GAME.CN_excavation and not (G.GAME.CN_excavate_used and G.GAME.CN_excavate_used > 0) then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
  return ret
end