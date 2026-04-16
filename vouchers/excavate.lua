if ClearNights.config.decks then SMODS.Voucher {
    key = 'excavate',
    atlas = 'Vouchers',
    pos = { x = 0, y = 0 },
    no_collection = true,
    discovered = true,
    
    in_pool = function(self, args)
      return false
    end,

    config = { 
      extra = {
        slots = 1 
      } 
    },
    
    set_ability = function(self, voucher, initial, delay_sprites)
      voucher.base_cost = 3 + 4 * (G.GAME.CN_excavate_used or 0) --3, 7, 11, 15, 19
      voucher:set_cost()
    end,
    
    loc_vars = function(self, info_queue, voucher)
      return { 
        vars = {
          voucher.ability.extra.slots 
        }
      }
    end,
    
    redeem = function(self, voucher)
      G.E_MANAGER:add_event(Event({
        func = function()
          if G.jokers then
            G.GAME.CN_excavate_used = (G.GAME.CN_excavate_used or 0) + 1
            G.jokers.config.card_limit = G.jokers.config.card_limit + 1
          end
          return true
        end,
      }))
    end
} end