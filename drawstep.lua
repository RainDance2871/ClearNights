SMODS.DrawStep {
  key = 'CN_draw_soul_as_hightlights',
  order = 5,
  conditions = { vortex = false, facing = 'front' },
  func = function(self, layer)
    if self.config.center.CN_soul_draw_as_highlight and (self.config.center.discovered or self.bypass_discovery_center) then
      card_drawn = self
      self.children.floating_sprite:draw_shader(self.config.center.CN_soul_draw_as_highlight_shader, nil, self.ARGS.send_to_shader, nil, self.children.center, 0, 0)
      card_drawn = nil
    end
  end
}