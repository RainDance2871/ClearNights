if ClearNights.config.decks then SMODS.Back {
	key = 'escher',
  atlas = 'Decks',
  unlocked = true,
  discovered = true,
	pos = ClearNights.GetDeckAtlasTable('escher'),
  
  initial_deck = {    
    Suits = { 'Spades', 'Hearts', 'Clubs' }
  },
  
  apply = function(self, back)
    G.GAME.CN_escher = true
    G.E_MANAGER:add_event(Event({
      func = function()
        local missing_suit_by_rank = {}
        local suits = { 'Spades', 'Hearts', 'Clubs', 'Diamonds' }
        for i = 2, 14 do
          missing_suit_by_rank[i] = pseudorandom_element(suits, pseudoseed('escher'))
        end
        
        for _, value in pairs(G.playing_cards) do
          if value.base.suit == missing_suit_by_rank[value.base.id] then
            SMODS.change_base(value, 'Diamonds')
          end
        end
        return true
      end
    }))
  end,
  
  calculate = function(self, back, context)
    if context.stay_flipped and context.to_area == G.discard then
      G.GAME.CN_shuffle_deck = true
      
      G.E_MANAGER:add_event(Event({
        func = function()
          if G.GAME.CN_shuffle_deck then
            G.deck:shuffle('escher' .. G.GAME.round_resets.ante)
            G.GAME.CN_shuffle_deck = nil
          end
          return true
        end
      }))
      
      return {
        modify = { to_area = G.deck }
      }
    end
  end
} end