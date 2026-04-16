return {
  descriptions = {
    Back = {      
      b_ClearNights_escher = {
        name = "Escher Deck",
        text = {
          "Start run with only",
          "{C:attention}39{} cards, shuffle",
          "{C:attention}played{} and {C:attention}discarded",
          "cards back into deck"
        }
      },
      
      b_ClearNights_excavation = {
        name = "Excavation Deck",
        text = {
          "Start run in {C:attention}Ante #1#{},",
          "but Joker Slots need",
          "to be {C:attention}purchased{} in",
          "the shop"
        }
      }
    },
    
    Joker = ClearNights.config.constellations and {   
      j_RainyDays_hannysvoorwerp = {
        name = "Hanny's Voorwerp",
        text = {
          "This Joker gains {C:mult}+#1#{} Mult",
          "whenever a {C:cn_constellation}Constellation",
          "or {C:planet}Planet{} card is {C:attention}sold",
          "{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)"
        }
      },
      
      j_RainyDays_mirror_lake = {
        name = "Mirror Lake",
        text = {
          "Create a {C:cn_constellation}Constellation",
          "card if played hand",
          "contains a {C:attention}Glass Card",
          "{C:inactive}(Must have room)"
        }
      },
      
      j_RainyDays_purple_card = {
        name = "Purple Card",
        text = {
          "Create a {C:cn_constellation}Constellation",
          "card when any {C:attention}Booster",
          "{C:attention}Pack{} is skipped",
          "{C:inactive}(Must have room)"
        }
      },
      
      j_RainyDays_sputnik = {
        name = "Sputnik",
        text = {
          "Create a {C:cn_constellation}Constellation",
          "card if played {C:attention}poker",
          "{C:attention}hand{} has not been",
          "played yet this {C:attention}Ante",
          "{C:inactive}(Must have room)"
        }
      },
      
      j_RainyDays_star_chart = {
        name = "Star Chart",
        text = {
          "{C:chips}+#1#{} Chips for each",
          "{C:cn_constellation}Constelllation{} card",
          "used this run",
          "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
        },
        unlock = {
          "During a run,",
          "use {E:1,C:attention}#1#{} or more",
          "{E:1,C:cn_constellation}Constellation",
          "or {E:1,C:planet}Planet{} cards"
        }
      },
      
      j_RainyDays_windowsill = {
        name = "Windowsill",
        text = {
          "Create a {C:cn_constellation}Constellation",
          "card every {C:attention}#1#{} {C:inactive}[#2#]{} cards",
          "with {C:diamonds}Diamond{} suit drawn",
          "during a round",
          "{C:inactive}(Must have room)"
        }
      },
      
      j_astronomer = {
        name = "Astronomer",
        text = {
          "All {C:cn_constellation}Constellation{} cards,",
          "{C:planet}Planet{} cards, and {C:planet}Celestial",
          "{C:planet}Packs{} in the shop are free"
        },
        unlock = {
          "Discover every",
          "{E:1,C:planet}Planet{} card",
        }
      },
      
      j_constellation = {
        name = "Celestial Joker",
        text = {
          "This Joker gains {X:mult,C:white}X#1#{} Mult",
          "each time a {C:cn_constellation}Constellation",
          "or {C:planet}Planet{} card is used",
          "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
        }
      },
      
      j_ring_master = {
        name = "Showman",
        text = {
          "{C:attention}Joker{} and {C:attention}consumable",
          "cards may appear",
          "multiple times"
        },
        unlock = {
          "Reach Ante",
          "level {E:1,C:attention}#1#",
        }
      },
      
      j_satellite = {
        name = "Satellite",
        text = {
          "At end of round, earn {C:money}$#1#{},",
          "plus an additional {C:money}$#2#{} for",
          "each unique {C:planet}Planet{} card",
          "used this run",
          "{C:inactive}(Currently {C:money}$#3#{C:inactive})"
        },
        unlock = {
          "Have {E:1,C:money}$#1#",
          "or more"
        }
      }
    } or nil,
    
    CN_Constellation = {
      c_ClearNights_aquarius = {
        name = "Aquarius",
        text = {
          "{C:attention}#1#{} and higher",
          "ranking {C:attention}poker hands{} each",
          "gain {C:chips}+#2#{} Chips"
        }
      },
      
      c_ClearNights_aries = {
        name = "Aries",
        text = {
          "Each {C:attention}poker hand",
          "gains {C:chips}+#1#{} Chips"
        }
      },
      
      c_ClearNights_cancer = {
        name = "Cancer",
        text = {
          "Create the {C:planet}Planet{} card",
          "for last played {C:attention}poker",
          "{C:attention}hand{}, but lose {C:money}$#1#"
        }
      },
      
      c_ClearNights_capricorn = {
        name = "Capricorn",
        text = {
          "Earn {C:money}$#1#{} for each level",
          "of highest level {C:attention}poker",
          "{C:attention}hand {C:inactive}(Max of {C:money}$#2#{C:inactive})",
          "{C:inactive}(Currently {C:money}$#3#{C:inactive})"
        }
      },
      
      c_ClearNights_gemini = {
        name = "Gemini",
        text = {
          "Create a copy of the",
          "last {C:cn_constellation}Constellation{} card",
          "used this run",
          "{s:0.8,C:cn_constellation}Gemini{s:0.8} excluded"
        }
      },
      
      c_ClearNights_leo = {
        name = "Leo",
        text = {
          "Earn {C:money}$#1#{}, but decrease",
          "level of highest level",
          "{C:attention}poker hand{} by {C:attention}#2#"
        }
      },
      
      c_ClearNights_libra = {
        name = "Libra",
        text = {
          "Random {C:attention}poker hand",
          "gains {C:chips}+#1#{} Chips",
          "and {C:mult}+#2#{} Mult"
        }
      },
      
      c_ClearNights_ophiuchus = {
        name = "Ophiuchus",
        text = {
          "Each secret {C:attention}poker",
          "{C:attention}hand{} gains {C:chips}+#1#{} Chips",
          "and {C:mult}+#2#{} Mult"
        }
      },
      
      c_ClearNights_pisces = {
        name = "Pisces",
        text = {
          "{C:attention}#1#{} and higher",
          "ranking {C:attention}poker hands{} each",
          "gain {C:mult}+#2#{} Mult"
        }
      },
      
      c_ClearNights_sagittarius = {
        name = "Sagittarius",
        text = {
          "{C:attention}#1#{} and higher",
          "ranking {C:attention}poker hands{} each",
          "earn {C:money}$#2#{} when played"
        }
      },
      
      c_ClearNights_scorpio = {
        name = "Scorpio",
        text = {
          "Each {C:attention}poker hand",
          "gains {C:mult}+#1#{} Mult and",
          "loses {C:chips}-#2#{} Chips"
        }
      },
      
      c_ClearNights_taurus = {
        name = "Taurus",
        text = {
          "Each {C:attention}poker hand",
          "gains {C:mult}+#1#{} Mult"
        }
      },
      
      c_ClearNights_virgo = {
        name = "Virgo",
        text = {
          "Upgrade lowest level",
          "{C:attention}poker hand{} by {C:attention}#1#{} levels"
        }
      }
    },
    
    Spectral = {
      c_ClearNights_stigmata = {
        name = "Stigmata",
        text = {
          "Add an {C:ivory}Ivory Seal",
          "to {C:attention}1{} selected",
          "card in your hand"
        }
      }
    },
    
    Voucher = {
      v_ClearNights_excavate = {
        name = "Excavate",
        text = {
          "{C:attention}+#1#{} Joker Slot"
        }
      },
      
      v_planet_merchant = ClearNights.config.constellations and {
        name = "Celestial Merchant",
        text = {
          "{C:cn_constellation}Constellation{} and {C:planet}Planet",
          "cards appear {C:attention}#1#X{} more",
          "frequently in the shop"
        }
      } or nil,
      
      v_planet_tycoon = ClearNights.config.constellations and {
        name = "Celestial Tycoon",
        text = {
          "{C:cn_constellation}Constellation{} and {C:planet}Planet",
          "cards appear {C:attention}#1#X{} more",
          "frequently in the shop"
        }
      } or nil
    },
    
    Other = {
      clearnights_ivory_seal = {
        name = "Ivory Seal",
        text = {
          "Creates a {C:cn_constellation}Constellation",
          "card if played in {C:attention}first",
          "or {C:attention}second{} hand of round",
          "{C:inactive}(Must have room)"
        }
      },
      
      undiscovered_cn_constellation = {
        name = "Not Discovered",
        text = {
          "Purchase or use",
          "this card in an",
          "unseeded run to",
          "learn what it does"
        }
      },
      
      p_celestial_jumbo = ClearNights.config.constellations and {
        name = "Jumbo Celestial Pack",
        text = {
          "Choose {C:attention}#1#{} of up to",
          "{C:attention}#2# {C:cn_constellation}Constellation{} or",
          "{C:planet}Planet{} cards to",
          "be used immediately"
        }
      } or nil,
      
      p_celestial_mega = ClearNights.config.constellations and {
        name = "Mega Celestial Pack",
        text = {
          "Choose {C:attention}#1#{} of up to",
          "{C:attention}#2# {C:cn_constellation}Constellation{} or",
          "{C:planet}Planet{} cards to",
          "be used immediately"
        }
      } or nil,
      
      p_celestial_normal = ClearNights.config.constellations and {
        name = "Celestial Pack",
        text = {
          "Choose {C:attention}#1#{} of up to",
          "{C:attention}#2# {C:cn_constellation}Constellation{} or",
          "{C:planet}Planet{} cards to",
          "be used immediately"
        }
      } or nil
    }
  },
  
  misc = {
    dictionary = {
      clearnights_constellation = "Constellation",
      clearnights_discover_all = "Discover all",
      clearnights_hands_secret = "Secret Hands",
      clearnights_include_constellations = "Include Constellations",
      clearnights_include_decks = "Include Decks",
      clearnights_money_bonus = "Money Bonus",
      clearnights_plus = "+",
      clearnights_requires_restart = "(Toggle options require restart)"
    },
    
    labels = {
      clearnights_ivory_seal = "Ivory Seal"
    }
  }
}