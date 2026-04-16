SMODS.Consumable {
  key = 'aries',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('aries'),
  unlocked = true,
  config = {
    chip_bonus = 12
  },
  
  loc_vars = function(self, info_queue, card)
    return {
      vars = { 
        card.ability.chip_bonus
      }
    }
  end,
  
  use = function(self, card, area, copier)
    local table = {}
    for _, value in ipairs(G.handlist) do
      table[#table + 1] = value
    end
    ClearNights.level_up_table_tailends(card, table, localize('k_all_hands'), false, 0, card.ability.chip_bonus)
  end,
  
  can_use = function(self, card)
    return true
  end
}