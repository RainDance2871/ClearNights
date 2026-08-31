return {
  descriptions = {
    Mod = {
      clearnights = {
        name = "晴夜",
        text = {
          "本模组新增两个与雨天(RainyDays)",
          "配合最佳的小型模块：",
          "——星座是一种全新的消耗牌类型，",
          "可为多种牌型提供持续整个赛局的增益。",
          "在补充包和商店中找到它们，",
          "构筑长期协同。",
          "——体验两副各具独特机制的牌组，",
          "带来全新挑战，改变你的游玩方式。",
        }
      }
    },

    Back = {
      b_ClearNights_escher = {
        name = "埃舍尔牌组",
        text = {
          "开局时玩家牌组",
          "仅有{C:attention}39{}张牌",
          "将{C:attention}打出的{}和{C:attention}弃掉的",
          "牌洗回牌组"
        }
      },

      b_ClearNights_excavation = {
        name = "发掘牌组",
        text = {
          "开局时处于{C:attention}底注#1#{}，",
          "但小丑牌槽位需要在",
          "商店中{C:attention}购买{}"
        }
      }
    },

    Joker = ClearNights.config.constellations and {
      j_RainyDays_hannysvoorwerp = {
        name = "哈尼天体",
        text = {
          "每{C:attention}售出{}一张{C:cn_constellation}星座{}牌",
          "或{C:planet}星球{}牌，",
          "这张小丑牌获得{C:mult}+#1#{}倍率",
          "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
        }
      },

      j_RainyDays_mirror_lake = {
        name = "镜湖",
        text = {
          "如果打出的牌中",
          "包含{C:attention}玻璃牌{}，",
          "生成一张{C:cn_constellation}星座{}牌",
          "{C:inactive}(必须有空位)"
        }
      },

      j_RainyDays_purple_card = {
        name = "紫牌",
        text = {
          "跳过任一{C:attention}补充包{}时，",
          "生成一张{C:cn_constellation}星座{}牌",
          "{C:inactive}(必须有空位)"
        }
      },

      j_RainyDays_sputnik = {
        name = "人造卫星",
        text = {
          "如果打出的{C:attention}牌型{}",
          "在本{C:attention}底注{}内尚未",
          "打出过，生成一张",
          "{C:cn_constellation}星座{}牌",
          "{C:inactive}(必须有空位)"
        }
      },

      j_RainyDays_star_chart = {
        name = "星图",
        text = {
          "本赛局内每使用过一张",
          "{C:cn_constellation}星座{}牌，",
          "获得{C:chips}+#1#{}筹码",
          "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
        },
        unlock = {
          "在一场赛局中，使用",
          "{E:1,C:attention}#1#{}张或更多",
          "{E:1,C:cn_constellation}星座{}牌",
          "或{E:1,C:planet}星球{}牌"
        }
      },

      j_RainyDays_windowsill = {
        name = "窗台",
        text = {
          "回合内每累计抽到",
          "{C:attention}#1#{}{C:inactive}[#2#]{}张",
          "{C:diamonds}方块{}花色牌，",
          "生成一张{C:cn_constellation}星座{}牌",
          "{C:inactive}(必须有空位)"
        }
      },

      j_astronomer = {
        name = "天文学家",
        text = {
          "所有{C:cn_constellation}星座{}牌、",
          "{C:planet}星球{}牌和{C:planet}天体",
          "{C:planet}补充包{}在商店内都{C:attention}免费"
        },
        unlock = {
          "发现所有",
          "{E:1,C:planet}星球{}牌",
        }
      },

      j_constellation = {
        name = "天体小丑",
        text = {
          "每当使用一张{C:cn_constellation}星座{}牌",
          "或{C:planet}星球{}牌，",
          "这张小丑牌获得{X:mult,C:white}X#1#{}倍率",
          "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
        }
      },

      j_ring_master = {
        name = "马戏团长",
        text = {
          "{C:attention}小丑牌{}和{C:attention}消耗牌{}",
          "可以同时出现复数张"
        },
        unlock = {
          "达到底注",
          "等级{E:1,C:attention}#1#",
        }
      },

      j_satellite = {
        name = "卫星",
        text = {
          "回合结束时获得{C:money}$#1#{}，",
          "本赛局内每使用过一种",
          "独特的{C:planet}星球{}牌，",
          "额外获得{C:money}$#2#{}",
          "{C:inactive}(当前{C:money}$#3#{C:inactive})"
        },
        unlock = {
          "有{E:1,C:money}$#1#",
          "或更多"
        }
      }
    } or nil,

    CN_Constellation = {
      c_ClearNights_aquarius = {
        name = "水瓶座",
        text = {
          "{C:attention}#1#{}及以上",
          "{C:attention}牌型{}每次",
          "获得{C:chips}+#2#{}筹码"
        }
      },

      c_ClearNights_aries = {
        name = "白羊座",
        text = {
          "每种{C:attention}牌型{}",
          "获得{C:chips}+#1#{}筹码"
        }
      },

      c_ClearNights_cancer = {
        name = "巨蟹座",
        text = {
          "生成上次打出的{C:attention}牌型{}",
          "对应的{C:planet}星球{}牌，",
          "但失去{C:money}$#1#"
        }
      },

      c_ClearNights_capricorn = {
        name = "摩羯座",
        text = {
          "最高等级{C:attention}牌型{}每有",
          "一级获得{C:money}$#1#{}",
          "{C:inactive}(最高{C:money}$#2#{C:inactive})",
          "{C:inactive}(当前{C:money}$#3#{C:inactive})"
        }
      },

      c_ClearNights_gemini = {
        name = "双子座",
        text = {
          "生成本赛局内最近使用的",
          "{C:cn_constellation}星座{}牌的复制",
          "{s:0.8,C:cn_constellation}双子座{s:0.8}除外"
        }
      },

      c_ClearNights_leo = {
        name = "狮子座",
        text = {
          "获得{C:money}$#1#{}，但最高等级",
          "{C:attention}牌型{}的等级",
          "降低{C:attention}#2#{}"
        }
      },

      c_ClearNights_libra = {
        name = "天秤座",
        text = {
          "随机{C:attention}牌型{}",
          "获得{C:chips}+#1#{}筹码",
          "和{C:mult}+#2#{}倍率"
        }
      },

      c_ClearNights_ophiuchus = {
        name = "蛇夫座",
        text = {
          "每种秘密{C:attention}牌型{}",
          "获得{C:chips}+#1#{}筹码",
          "和{C:mult}+#2#{}倍率"
        }
      },

      c_ClearNights_pisces = {
        name = "双鱼座",
        text = {
          "{C:attention}#1#{}及以上",
          "{C:attention}牌型{}每次",
          "获得{C:mult}+#2#{}倍率"
        }
      },

      c_ClearNights_sagittarius = {
        name = "射手座",
        text = {
          "{C:attention}#1#{}及以上",
          "{C:attention}牌型{}打出时",
          "各获得{C:money}$#2#{}"
        }
      },

      c_ClearNights_scorpio = {
        name = "天蝎座",
        text = {
          "每种{C:attention}牌型{}获得",
          "{C:mult}+#1#{}倍率，",
          "但失去{C:chips}-#2#{}筹码"
        }
      },

      c_ClearNights_taurus = {
        name = "金牛座",
        text = {
          "每种{C:attention}牌型{}",
          "获得{C:mult}+#1#{}倍率"
        }
      },

      c_ClearNights_virgo = {
        name = "处女座",
        text = {
          "将等级最低的{C:attention}牌型{}",
          "提升{C:attention}#1#{}级"
        }
      }
    },

    Spectral = {
      c_ClearNights_stigmata = {
        name = "圣痕",
        text = {
          "将{C:ivory}象牙蜡封{}添加至",
          "手牌中{C:attention}1{}张",
          "选定的牌"
        }
      }
    },

    Voucher = {
      v_ClearNights_excavate = {
        name = "发掘",
        text = {
          "小丑牌槽位{C:attention}+#1#{}"
        }
      },

      v_planet_merchant = ClearNights.config.constellations and {
        name = "天体商人",
        text = {
          "{C:cn_constellation}星座{}牌和{C:planet}星球{}牌",
          "在商店内出现频率",
          "{C:attention}#1#X{}"
        }
      } or nil,

      v_planet_tycoon = ClearNights.config.constellations and {
        name = "天体大亨",
        text = {
          "{C:cn_constellation}星座{}牌和{C:planet}星球{}牌",
          "在商店内出现频率",
          "{C:attention}#1#X{}"
        }
      } or nil
    },

    Other = {
      clearnights_ivory_seal = {
        name = "象牙蜡封",
        text = {
          "如果在本回合的",
          "{C:attention}第1手{}或{C:attention}第2手{}打出，",
          "生成一张{C:cn_constellation}星座{}牌",
          "{C:inactive}(必须有空位)"
        }
      },

      undiscovered_cn_constellation = {
        name = "未发现",
        text = {
          "在非预设局中",
          "购买或使用此牌",
          "以了解其效果"
        }
      },

      p_celestial_jumbo = ClearNights.config.constellations and {
        name = "巨型天体包",
        text = {
          "从最多{C:attention}#2#张{C:cn_constellation}星座{}牌",
          "或{C:planet}星球{}牌中选择",
          "{C:attention}#1#{}张，即选即用"
        }
      } or nil,

      p_celestial_mega = ClearNights.config.constellations and {
        name = "超级天体包",
        text = {
          "从最多{C:attention}#2#张{C:cn_constellation}星座{}牌",
          "或{C:planet}星球{}牌中选择",
          "{C:attention}#1#{}张，即选即用"
        }
      } or nil,

      p_celestial_normal = ClearNights.config.constellations and {
        name = "天体包",
        text = {
          "从最多{C:attention}#2#张{C:cn_constellation}星座{}牌",
          "或{C:planet}星球{}牌中选择",
          "{C:attention}#1#{}张，即选即用"
        }
      } or nil
    }
  },

  misc = {
    dictionary = {
      clearnights_constellation = "星座",
      clearnights_discover_all = "全部发现",
      clearnights_hands_secret = "秘密牌型",
      clearnights_include_constellations = "包含星座",
      clearnights_include_decks = "包含牌组",
      clearnights_money_bonus = "金钱加成",
      clearnights_plus = "+",
      clearnights_requires_restart = "(切换选项需要重启)"
    },

    labels = {
      clearnights_ivory_seal = "象牙蜡封"
    }
  }
}
