function ClearNights.folder_get_filenames(folder)
  local filenames = SMODS.NFS.getDirectoryItems(ClearNights.path .. folder)
  for i = 1, #filenames do
    filenames[i] = string.gsub(filenames[i], '.lua', '')
  end
  return filenames
end

function ClearNights.discover_all_in_folder(folder, prefix, string_start)
  local foldernames = ClearNights.folder_get_filenames(folder)
  for i = 1, #foldernames do
    foldernames[i] = string.sub(foldernames[i], string_start or 1)
    local card = G.P_CENTERS[prefix .. 'ClearNights_' .. foldernames[i]]
    if card and card.unlocked then
      discover_card(card)
    end
  end
end

function G.FUNCS.clearnights_discover_all()
  ClearNights.discover_all_in_folder('constellations', 'c_', 4)
  ClearNights.discover_all_in_folder('spectrals', 'c_')
end

ClearNights.config_tab = function()
  return {
    n = G.UIT.ROOT,
    config = {
      align = 'cm',
      padding = 0.05,
      emboss = 0.05,
      r = 0.1,
      colour = G.C.CLEAR
    },
    nodes = {
      {
        n = G.UIT.R,
        config = { align = 'cm', padding = 0.2 },
        nodes = {
          create_toggle({
            label = localize('clearnights_include_constellations'),
            ref_table = ClearNights.config,
            ref_value = 'constellations'
          }),
        }
      }, {
        n = G.UIT.R,
        config = { align = 'cm', padding = 0.2 },
        nodes = {
          create_toggle({
            label = localize('clearnights_include_decks'),
            ref_table = ClearNights.config,
            ref_value = 'decks'
          }),
        }
      }, {
        n = G.UIT.R,
        config = { align = 'cm', padding = 0.2 },
        nodes = {
          UIBox_button({
            label = { localize('clearnights_discover_all') },
            button = 'clearnights_discover_all'
          })
        }
      }
    }
  }
end