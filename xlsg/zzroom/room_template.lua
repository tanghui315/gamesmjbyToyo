
mrequire("base.layout_base")
mrequire("mymodules")
room_Template = class("room_Template", base.layout_base.LayoutBase)

function room_Template:_do_prepare_init(other_index)
	other_index = other_index or ""
	local ui_manager = mymodules.manager:get_control_manager("ui")
	self.room_head0 = ui_manager:register_widget_object("room_head0",other_index)
	self.room_head4 = ui_manager:register_widget_object("room_head4",other_index)
	self.room_zuan0 = ui_manager:register_widget_object("room_zuan0",other_index)
	self.room_bei2 = ui_manager:register_widget_object("room_bei2",other_index)
	self.room_head2 = ui_manager:register_widget_object("room_head2",other_index)
	self.room_name4 = ui_manager:register_widget_object("room_name4",other_index)
	self.room_head3 = ui_manager:register_widget_object("room_head3",other_index)
	self.room_zuan1 = ui_manager:register_widget_object("room_zuan1",other_index)
	self.room_name0 = ui_manager:register_widget_object("room_name0",other_index)
	self.room_bei0 = ui_manager:register_widget_object("room_bei0",other_index)
	self.room_head1 = ui_manager:register_widget_object("room_head1",other_index)
	self.room_name2 = ui_manager:register_widget_object("room_name2",other_index)
	self.room_gold3 = ui_manager:register_widget_object("room_gold3",other_index)
	self.room_p2 = ui_manager:register_widget_object("room_p2",other_index)
	self.room_name1 = ui_manager:register_widget_object("room_name1",other_index)
	self.room_rd0 = ui_manager:register_widget_object("room_rd0",other_index)
	self.room_bei1 = ui_manager:register_widget_object("room_bei1",other_index)
	self.room_rd2 = ui_manager:register_widget_object("room_rd2",other_index)
	self.room_rd3 = ui_manager:register_widget_object("room_rd3",other_index)
	self.room_zuan4 = ui_manager:register_widget_object("room_zuan4",other_index)
	self.room_rd4 = ui_manager:register_widget_object("room_rd4",other_index)
	self.room_q3 = ui_manager:register_widget_object("room_q3",other_index)
	self.room_p0 = ui_manager:register_widget_object("room_p0",other_index)
	self.room_p4 = ui_manager:register_widget_object("room_p4",other_index)
	self.room_q2 = ui_manager:register_widget_object("room_q2",other_index)
	self.room_gold1 = ui_manager:register_widget_object("room_gold1",other_index)
	self.room_bein4 = ui_manager:register_widget_object("room_bein4",other_index)
	self.room_gold2 = ui_manager:register_widget_object("room_gold2",other_index)
	self.room_zuan2 = ui_manager:register_widget_object("room_zuan2",other_index)
	self.room_q4 = ui_manager:register_widget_object("room_q4",other_index)
	self.room_gold4 = ui_manager:register_widget_object("room_gold4",other_index)
	self.room_p3 = ui_manager:register_widget_object("room_p3",other_index)
	self.room_bein3 = ui_manager:register_widget_object("room_bein3",other_index)
	self.room_p1 = ui_manager:register_widget_object("room_p1",other_index)
	self.room_name3 = ui_manager:register_widget_object("room_name3",other_index)
	self.room_q1 = ui_manager:register_widget_object("room_q1",other_index)
	self.room_bein1 = ui_manager:register_widget_object("room_bein1",other_index)
	self.room_zuan3 = ui_manager:register_widget_object("room_zuan3",other_index)
	self.room_bei4 = ui_manager:register_widget_object("room_bei4",other_index)
	self.room_q0 = ui_manager:register_widget_object("room_q0",other_index)
	self.room_bein0 = ui_manager:register_widget_object("room_bein0",other_index)
	self.room_bein2 = ui_manager:register_widget_object("room_bein2",other_index)
	self.room_gold0 = ui_manager:register_widget_object("room_gold0",other_index)
	self.room_bei3 = ui_manager:register_widget_object("room_bei3",other_index)
	self.room_rd1 = ui_manager:register_widget_object("room_rd1",other_index)


end



