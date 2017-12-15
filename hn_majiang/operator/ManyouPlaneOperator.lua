local Card = require("hn_majiang.card.card")

local ManyouPlaneOperator = class("ManyouPlaneOperator")

local CHILD_NAME_LIGHT_IMG = "light_img"
local CHILD_NAME_MO_BT = "mo_bt"
local CHILD_NAME_BUMO_BT = "bumo_bt"
local CHILD_NAME_DESC_LB = "desc_lb"
local CHILD_NAME_BG_CARD = "bg_card"
local CHILD_NAME_CARD = "card"

function ManyouPlaneOperator:init()
	HNMJ_MANYOU_PLANE:setVisible(false)

	HNMJ_MANYOU_PLANE:setLocalZOrder(2000)

	local mo_bt = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_MO_BT)
	local bumo_bt = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_BUMO_BT)

	local function bt_callback(sender, event)
		if event == TOUCH_EVENT_ENDED then
			--todo
			if sender == mo_bt then
				--todo
				HNMJ_CONTROLLER:acceptManyou(true)
				self:hide()
			elseif sender == bumo_bt then
				HNMJ_CONTROLLER:acceptManyou(false)
				self:hide()
			end
		end
	end

	mo_bt:addTouchEventListener(bt_callback)
	bumo_bt:addTouchEventListener(bt_callback)
end

function ManyouPlaneOperator:show(card, uid)
	HNMJ_MANYOU_PLANE:setVisible(true)
	local light_img = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_LIGHT_IMG)

	local ac = cc.Sequence:create(cc.RotateBy:create(3, 360))
	light_img:runAction(cc.RepeatForever:create(ac))

	local cardNode = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_CARD)
	if cardNode then
		--todo
		cardNode:removeFromParent()
	end
	local bgCard = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_BG_CARD)
	local mo_bt = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_MO_BT)
	local bumo_bt = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_BUMO_BT)
	local desc_lb = HNMJ_MANYOU_PLANE:getChildByName(CHILD_NAME_DESC_LB)

	if card then
		--todo
		bgCard:setVisible(false)
		mo_bt:setVisible(false)
		bumo_bt:setVisible(false)
		desc_lb:setVisible(true)

		local nick = HNMJ_USERINFO_TABLE[HNMJ_SEAT_TABLE[uid .. ""] .. ""].nick

		desc_lb:setString("玩家 " .. nick .. " 摸了海底牌")

		local newCardNode = Card:new(CARD_PLAYERTYPE_MY, CARD_TYPE_LEFTHAND, CARD_DISPLAY_TYPE_SHOW, card)
		local position = bgCard:getPosition()
		local scale = bgCard:getSize().width / newCardNode:getSize().width
		newCardNode:setScale(scale)
		newCardNode:setPosition(position)
		newCardNode:setName(CHILD_NAME_CARD)

		HNMJ_MANYOU_PLANE:addChild(newCardNode)

		
		local sequenceAc = cc.Sequence:create(cc.DelayTime:create(2), cc.Hide:create())
		HNMJ_MANYOU_PLANE:runAction(sequenceAc)
	else
		bgCard:setVisible(true)
		mo_bt:setVisible(true)
		bumo_bt:setVisible(true)
		desc_lb:setVisible(false)
	end
end

function ManyouPlaneOperator:hide()
	HNMJ_MANYOU_PLANE:setVisible(false)
end

return ManyouPlaneOperator