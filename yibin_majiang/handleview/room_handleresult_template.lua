
mrequire("base.layout_base")
mrequire("mymodules")
room_handleresult_Template = class("room_handleresult_Template", base.layout_base.LayoutBase)

function room_handleresult_Template:_do_prepare_init(other_index)
	other_index = other_index or ""
	local ui_manager = mymodules.manager:get_control_manager("ui")
	self.room_handleresult_peng_base2 = ui_manager:register_widget_object("room_handleresult_peng_base2",other_index)
	self.room_handleresult_peng_base = ui_manager:register_widget_object("room_handleresult_peng_base",other_index)
	self.room_handleresult_h2 = ui_manager:register_widget_object("room_handleresult_h2",other_index)
	self.room_handleresult_hu_basek1 = ui_manager:register_widget_object("room_handleresult_hu_basek1",other_index)
	self.room_handleresult_hu_basel0 = ui_manager:register_widget_object("room_handleresult_hu_basel0",other_index)
	self.room_handleresult_hu_basek3 = ui_manager:register_widget_object("room_handleresult_hu_basek3",other_index)
	self.room_handleresult_hu2 = ui_manager:register_widget_object("room_handleresult_hu2",other_index)
	self.room_handleresult_chi_base1 = ui_manager:register_widget_object("room_handleresult_chi_base1",other_index)
	self.room_handleresult_hu_base2 = ui_manager:register_widget_object("room_handleresult_hu_base2",other_index)
	self.room_handleresult_hu_basel1 = ui_manager:register_widget_object("room_handleresult_hu_basel1",other_index)
	self.room_handleresult_base = ui_manager:register_widget_object("room_handleresult_base",other_index)
	self.room_handleresult_peng_base1 = ui_manager:register_widget_object("room_handleresult_peng_base1",other_index)
	self.room_handleresult_g = ui_manager:register_widget_object("room_handleresult_g",other_index)
	self.room_handleresult_c = ui_manager:register_widget_object("room_handleresult_c",other_index)
	self.room_handleresult_hu_base0 = ui_manager:register_widget_object("room_handleresult_hu_base0",other_index)
	self.room_handleresult_hu_basel2 = ui_manager:register_widget_object("room_handleresult_hu_basel2",other_index)
	self.room_handleresult_hu_basel3 = ui_manager:register_widget_object("room_handleresult_hu_basel3",other_index)
	self.room_handleresult_gang_base2 = ui_manager:register_widget_object("room_handleresult_gang_base2",other_index)
	self.room_handleresult_hu1 = ui_manager:register_widget_object("room_handleresult_hu1",other_index)
	self.room_handleresult_gang_base = ui_manager:register_widget_object("room_handleresult_gang_base",other_index)
	self.room_handleresult_h1 = ui_manager:register_widget_object("room_handleresult_h1",other_index)
	self.room_handleresult_hu_bases1 = ui_manager:register_widget_object("room_handleresult_hu_bases1",other_index)
	self.room_handleresult_hu_bases2 = ui_manager:register_widget_object("room_handleresult_hu_bases2",other_index)
	self.room_handleresult_hu_base1 = ui_manager:register_widget_object("room_handleresult_hu_base1",other_index)
	self.room_handleresult_gang_base3 = ui_manager:register_widget_object("room_handleresult_gang_base3",other_index)
	self.room_handleresult_chi_base = ui_manager:register_widget_object("room_handleresult_chi_base",other_index)
	self.room_handleresult_peng = ui_manager:register_widget_object("room_handleresult_peng",other_index)
	self.room_handleresult_hu_bases0 = ui_manager:register_widget_object("room_handleresult_hu_bases0",other_index)
	self.room_handleresult_chi = ui_manager:register_widget_object("room_handleresult_chi",other_index)
	self.room_handleresult_peng_base3 = ui_manager:register_widget_object("room_handleresult_peng_base3",other_index)
	self.room_handleresult_chi_base3 = ui_manager:register_widget_object("room_handleresult_chi_base3",other_index)
	self.room_handleresult_h3 = ui_manager:register_widget_object("room_handleresult_h3",other_index)
	self.room_handleresult_hu_base3 = ui_manager:register_widget_object("room_handleresult_hu_base3",other_index)
	self.room_handleresult_gang = ui_manager:register_widget_object("room_handleresult_gang",other_index)
	self.room_handleresult_hu_basek0 = ui_manager:register_widget_object("room_handleresult_hu_basek0",other_index)
	self.room_handleresult_hu3 = ui_manager:register_widget_object("room_handleresult_hu3",other_index)
	self.room_handleresult_hu_basek2 = ui_manager:register_widget_object("room_handleresult_hu_basek2",other_index)
	self.room_handleresult_chi_base2 = ui_manager:register_widget_object("room_handleresult_chi_base2",other_index)
	self.room_handleresult_p = ui_manager:register_widget_object("room_handleresult_p",other_index)
	self.room_handleresult_hu_bases3 = ui_manager:register_widget_object("room_handleresult_hu_bases3",other_index)
	self.room_handleresult_h0 = ui_manager:register_widget_object("room_handleresult_h0",other_index)
	self.room_handleresult_hu0 = ui_manager:register_widget_object("room_handleresult_hu0",other_index)
	self.room_handleresult_gang_base1 = ui_manager:register_widget_object("room_handleresult_gang_base1",other_index)


end



