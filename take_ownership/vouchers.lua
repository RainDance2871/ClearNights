--old shop rate = 4 .. 9.6 .. 32
--new shop rate = 2 .. 4.8 .. 16

local game_init_ref = Game.init_game_object
function Game:init_game_object()
  local ret = game_init_ref(self)
  if ClearNights.config.constellations then 
    ret.planet_rate = ret.planet_rate / 2
    ret.cn_constellation_rate = ret.planet_rate
  end
  return ret
end

if ClearNights.config.constellations then SMODS.Voucher:take_ownership('planet_merchant', {
  redeem = function(self, card)
    G.E_MANAGER:add_event(Event({
      func = function()
        local rate_change = 4.8 / 2 --starting rate 2 -> after 4.8
        G.GAME.planet_rate = G.GAME.planet_rate * rate_change
        G.GAME.cn_constellation_rate = G.GAME.cn_constellation_rate * rate_change
        return true
      end
    }))
  end,
}, true)

SMODS.Voucher:take_ownership('planet_tycoon', {
  redeem = function(self, card)
    G.E_MANAGER:add_event(Event({
      func = function()
        local rate_change = 16 / 4.8 --rate with merchant 4.8 -> after 16
        G.GAME.planet_rate = G.GAME.planet_rate * rate_change
        G.GAME.cn_constellation_rate = G.GAME.cn_constellation_rate * rate_change
        return true
      end
    }))
  end,
}, true) end