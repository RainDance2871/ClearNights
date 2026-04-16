SMODS.Consumable {
  key = 'ophiuchus',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('ophiuchus'),
  unlocked = true,
  
  in_pool = function(self, args) --only appears if player has revealed at least one secret hand.
    for _, value in ipairs(G.handlist) do
      if G.GAME.hands[value].visible and G.GAME.hands[value].CN_secret then
        return true
      end
    end
    return false
  end,
  
  config = {
    chip_bonus = 30,
    mult_bonus = 4
  },
  
  loc_vars = function(self, info_queue, card)
    return { 
      vars = {
        card.ability.chip_bonus,
        card.ability.mult_bonus
      } 
    }
  end,
  
  use = function(self, card, area, copier)
    local table = {}
    for _, value in ipairs(G.handlist) do
      if not G.GAME.hands[value].visible or G.GAME.hands[value].CN_secret then
        table[#table + 1] = value
      end
    end
    ClearNights.level_up_table_tailends(card, table, localize('clearnights_hands_secret'), false, 0, card.ability.chip_bonus, card.ability.mult_bonus)
  end,

  can_use = function(self, card)
    return true
  end
}

--check if hand is a secret hand
local game_init_game_object_ref = Game.init_game_object
function Game:init_game_object()
  local ret = game_init_game_object_ref(self)
  for _, value in ipairs(G.handlist) do
    ret.hands[value].CN_secret = (not ret.hands[value].visible or type(ret.hands[value].visible) == 'function')
  end 
  return ret
end