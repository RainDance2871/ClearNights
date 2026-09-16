return {
  descriptions = {
    Mod = {
      clearnights = {
        name = "Clear Nights",
        text = {
          "Deze mod voegt twee kleine modules toe,",
          "bedoelt om samen te speln met {C:attention}RainyDays{}:",
          " ",          
          "{C:cn_constellation}Sterrenbeeld{}-kaarten zijn een nieuwe {C:attention}consumptie{},",
          "welke permanente upgrades geeft een meerdere",
          "{C:attention}pokerhanden{}. Vindt ze in {C:attention}boosterpakketten{} en in",
          "de winkel om een unieke synergie te bouwen.",
          " ",          
          "Speel met twee nieuwe {C:attention}kaartspellen{}, elke met",
          "unieke spelmechaniek, voor nieuwe uitdagingen",
          "en nieuwe ervaringen."
        }
      }
    },
    
    Back = {      
      b_ClearNights_escher = {
        name = "Escher Kaartspel",
        text = {
          "Start spel met {C:attention}#2#{} kaarten",
          "en stop {C:attention}gespeelde{} en {C:attention}weg-",
          "gegooide kaarten terug in",
          "het kaartspel",
          "{C:blue}+#1#{} speelkans per ronde"
        }
      },
      
      b_ClearNights_excavation = {
        name = "Opgravingskaartspel",
        text = {
          "Start spel in {C:attention}ante #1#{},",
          "maar Joker-vakken",
          "moeten in de winkel",
          "{C:attention}gekocht{} worden"
        }
      }
    },
    
    Joker = ClearNights.config.constellations and {
      j_RainyDays_mirror_lake = {
        name = "Spiegelmeer",
        text = {
          "Creëer een {C:cn_constellation}sterrenbeeld{}-",
          "kaart als gespeelde hand",
          "een {C:attention}glazen kaart{} bevat",
          "{C:inactive}(Moet ruimte voor zijn)"
        }
      },
      
      j_RainyDays_purple_card = {
        name = "Paarse Kaart",
        text = {
          "Creëer een {C:cn_constellation}sterrenbeeld{}-",
          "kaart wanneer een {C:attention}booster-",
          "{C:attention}pakket{} wordt overgeslagen",
          "{C:inactive}(Moet ruimte voor zijn)"
        }
      },
      
      j_RainyDays_sputnik = {
        name = "Sputnik",
        text = {
          "Creëer een {C:cn_constellation}sterrenbeeld{}-kaart",
          "als gespeelde {C:attention}pokerhand{} deze",
          "{C:attention}ante{} nog niet gespeeld is",
          "{C:inactive}(Moet ruimte voor zijn)"
        }
      },
      
      j_RainyDays_star_chart = {
        name = "Sterrenkaart",
        text = {
          "{C:chips}+#1#{} fiches voor elke",
          "dit spel gebruikte",
          "{C:cn_constellation}sterrenbeeld{}-kaart",
          "{C:inactive}(Momenteel {C:chips}+#2#{C:inactive} fiches)"
        },
        unlock = {
          "Tijdens een spel,",
          "gebruik minstens",
          "{E:1,C:attention}#1# {C:cn_constellation}sterrenbeeld{}-",
          "of {E:1,C:planet}planeet{}-kaarten"
        }
      },
      
      j_astronomer = {
        name = "Astronoom",
        text = {
          "Alle {C:cn_constellation}sterrenbeeld{}-kaarten,",
          "{C:planet}planeet{}-kaarten en {C:planet}Hemelse",
          "{C:planet}pakketten{} in de winkel zijn",
          "{C:attention}gratis"
        },
        unlock = {
          "Ontdek elke",
          "{E:1,C:planet}planeet{}-kaart",
        }
      },
      
      j_constellation = {
        name = "Hemelse Joker",
        text = {
          "Deze Joker ontvang {X:mult,C:white}X#1#{} Multi",
          "wanneer een {C:cn_constellation}sterrenbeeld{}- of",
          "{C:planet}planeet{}-kaart wordt gebruikt"
        }
      },
      
      j_ring_master = {
        name = "Ringmeester",
        text = {
          "{C:attention}Jokers{} en {C:attention}consumpties",
          "verschijnen meerdere",
          "keren"
        },
        unlock = {
          "Bereik ante",
          "level {E:1,C:attention}#1#"
        }
      }
    } or nil,
    
    CN_Constellation = {
      c_ClearNights_aquarius = {
        name = "Waterman",
        text = {
          "{C:attention}#1#",
          "en hogere {C:attention}poker-",
          "{C:attention}handen{} ontvangen",
          "elk {C:chips}+#2#{} fiches"
        }
      },
      
      c_ClearNights_aries = {
        name = "Ram",
        text = {
          "Elke {C:attention}pokerhand",
          "ontvangt {C:chips}+#1#{} fiches"
        }
      },
      
      c_ClearNights_cancer = {
        name = "Kreeft",
        text = {
          "Creëer de {C:planet}planeet{}-kaart",
          "voor laatst gespeelde {C:attention}poker",
          "{C:attention}hand{}, maar verlies {C:money}$#1#"
        }
      },
      
      c_ClearNights_capricorn = {
        name = "Steenbok",
        text = {
          "Verdien {C:money}$#1#{} for elke level",
          "van de hoogste level",
          "{C:attention}pokerhand {C:inactive}(Max. van {C:money}$#2#{C:inactive})",
          "{C:inactive}(Momenteel {C:money}$#3#{C:inactive})"
        }
      },
      
      c_ClearNights_gemini = {
        name = "Tweelingen",
        text = {
          "Creëer een kopie van de",
          "laatst dit spel gebruikte",
          "{C:cn_constellation}sterrenbeeld{}-kaart",
          "{s:0.8,C:cn_constellation}Tweelingen{s:0.8} uitgezonderd"
        }
      },
      
      c_ClearNights_leo = {
        name = "Leeuw",
        text = {
          "Verdien {C:money}$#1#{}, maar", 
          "verlaag het level",
          "van hoogste level",
          "{C:attention}pokerhand{} met {C:attention}#2#"
        }
      },
      
      c_ClearNights_libra = {
        name = "Weegschaal",
        text = {
          "Willekeurige {C:attention}pokerhand",
          "ontvangt {C:chips}+#1#{} fiches en",
          "{C:mult}+#2#{} Multi"
        }
      },
      
      c_ClearNights_ophiuchus = {
        name = "Slangendrager",
        text = {
          "Elke geheime {C:attention}pokerhand",
          "ontvangt {C:chips}+#1#{} fiches",
          "en {C:mult}+#2#{} Multi"
        }
      },
      
      c_ClearNights_pisces = {
        name = "Vissen",
        text = {
          "{C:attention}#1#",
          "en hogere {C:attention}poker-",
          "{C:attention}handen{} ontvangen",
          "elk {C:mult}+#2#{} Multi"
        }
      },
      
      c_ClearNights_sagittarius = {
        name = "Boogschutter",
        text = {
          "{C:attention}#1#{} en hogere {C:attention}poker-",
          "{C:attention}handen{} verdienen elk",
          "{C:money}$#2#{} bij het spelen"
        }
      },
      
      c_ClearNights_scorpio = {
        name = "Schorpioen",
        text = {
          "Elke {C:attention}pokerhand",
          "ontvangt {C:mult}+#1#{} Multi en",
          "verliest {C:chips}-#2#{} fiches"
        }
      },
      
      c_ClearNights_taurus = {
        name = "Stier",
        text = {
          "Elke {C:attention}pokerhand",
          "ontvangt {C:mult}+#1#{} Multi"
        }
      },
      
      c_ClearNights_virgo = {
        name = "Maagd",
        text = {
          "Upgrade de laagste",
          "level {C:attention}pokerhand",
          "met {C:attention}#1#{} levels"
        }
      }
    },
    
    Spectral = {
      c_ClearNights_stigmata = {
        name = "Stigmata",
        text = {
          "Voeg een {C:ivory}ivoren zegel{} toe",
          "aan {C:attention}1{} geselecteerde",
          "kaart in je hand",
        }
      }
    },
    
    Voucher = {
      v_ClearNights_excavate = {
        name = "Uitgraven",
        text = {
          "{C:attention}+#1#{} Joker-vak"
        }
      },
      
      v_planet_merchant = ClearNights.config.constellations and {
        name = "Planeetverkoper",
        text = {
          "{C:cn_constellation}Sterrenbeeld{}- en {C:planet}planeet{}-",
          "kaarten verschijnen",
          "{C:attention}#1# X{} vaker in de winkel"
        }
      } or nil,
      
      v_planet_tycoon = ClearNights.config.constellations and {
        name = "Planeettycoon",
        text = {
          "{C:cn_constellation}Sterrenbeeld{}- en {C:planet}planeet{}-",
          "kaarten verschijnen",
          "{C:attention}#1# X{} vaker in de winkel"
        }
      } or nil
    },
    
    Other = {
      clearnights_ivory_seal = {
        name = "Ivoren Zegel",
        text = {
          "Creëer een {C:cn_constellation}sterrenbeeld{}-kaart",
          "als deze is gespeeld in {C:attention}eerste",
          "of {C:attention}tweede{} hand van de ronde",
          "{C:inactive}(Moet ruimte voor zijn)"
        }
      },
      
      undiscovered_cn_constellation = {
        name = "Niet ontdekt",
        text = {
          "Koop of gebruik",
          "deze kaart in een",
          "spel zonder seed om",
          "te leren wat hij doet"
        }
      },
      
      p_celestial_jumbo = ClearNights.config.constellations and {
        name = "Jumbo Hemels pakket",
        text = {
          "Kies {C:attention}#1#{} van maximaal",
          "{C:attention}#2# {C:cn_constellation}sterrenbeeld{}- of",
          "{C:planet}planeet{}-kaarten om",
          "direct te gebruiken"
        }
      } or nil,
      
      p_celestial_mega = ClearNights.config.constellations and {
        name = "Mega Hemels pakket",
        text = {
          "Kies {C:attention}#1#{} van maximaal",
          "{C:attention}#2# {C:cn_constellation}sterrenbeeld{}- of",
          "{C:planet}planeet{}-kaarten om",
          "direct te gebruiken"
        }
      } or nil,
      
      p_celestial_normal = ClearNights.config.constellations and {
        name = "Hemels pakket",
        text = {
          "Kies {C:attention}#1#{} van maximaal",
          "{C:attention}#2# {C:cn_constellation}sterrenbeeld{}- of",
          "{C:planet}planeet{}-kaarten om",
          "direct te gebruiken"
        }
      } or nil
    }
  },
  
  misc = {
    dictionary = {
      b_cn_constellation_cards = "Sterrenbeeldkaarten",
      clearnights_constellation = "Sterrenbeeld",
      clearnights_discover_all = "Ontdek alles",
      clearnights_hands_secret = "Geheime handen",
      clearnights_include_constellations = "Sterrenbeelden toevoegen",
      clearnights_include_decks = "Kaartspellen toevoegen",
      clearnights_money_bonus = "Geld Bonus: ",
      clearnights_plus = "+",
      clearnights_requires_restart = "(Opties vereisen herstarten)",
      k_cn_constellation = "Sterrenbeeld"
    },
    
    labels = {
      clearnights_ivory_seal = "Ivoren Zegel"
    }
  }
}