local tdhmjData = require("tdh.globle.TDHMJData")

local CardUtils = class("CardUtils")

function CardUtils:insertCardsByUid(uid, newCard)
	--todo
	local cards = tdhmjData:getCards(uid)
	
	self:insertCardsByUid(cards, newCard)
end

--根据1,0给出布尔值
function CardUtils:judge(data)
	local data=data
		if data==1 then
	       flag=true
	    else
	       flag=false
	    end
	return flag
end


function CardUtils:insertCards(cards, newCard)
	if cards and table.getn(cards) > 0 then
		--todo
		local newValue = newCard

		local insertIndex = 1;
		local j = table.getn(cards)
		for i = 1, j do
			local index = math.floor((i + j) / 2)

			dump(index, "cards test")

			if cards[index] < newValue then
				--todo
				i = index + 1
				insertIndex = i
			elseif cards[index] > newValue then
				j = index - 1
				insertIndex = j
			else
				insertIndex = index + 1
				break
			end
		end

		table.insert(cards, insertIndex, newCard)
	end
end

--玩家与座位号映射
function CardUtils:getPlayerType(seatId)
    local other_index = seatId - TDHMJ_MY_USERINFO.seat_id
    dump(TDHMJ_MY_USERINFO.seat_id,"玩家与座位号映射")

    dump(other_index, "playerType test")

	local playerType = CARD_PLAYERTYPE_MY
    if other_index < 0 then
      other_index = other_index + 4
    end

    if other_index == 1 then
    	playerType = CARD_PLAYERTYPE_RIGHT
    elseif other_index == 0 then 
        playerType = CARD_PLAYERTYPE_MY
    elseif other_index == 2 then
    	playerType = CARD_PLAYERTYPE_TOP
    elseif other_index == 3 then
    	playerType = CARD_PLAYERTYPE_LEFT
    end

    return playerType
end

--碰杠胡晾喜操作的判断
function CardUtils:getControlTable(pack, handleCard)

	local result = {}

	result["type"] = pack.handle

	if handleCard then
		--todo
		result["value"] = handleCard
		return result
	end

	local cards = pack.cards

	if cards[1] > 0 then
		--todo
		result["value"] = cards[1]

		return result
	end

	if cards[5] > 0 then
		--todo
		result["value"] = cards[5]

		return result
	end

	result["value"] = 0

	return result
end


function CardUtils:processControl(seatId, handle, value)
	local progCards = {}

	local removeCards = {}

	if bit.band(handle, CONTROL_TYPE_GANG) > 0 then
		--todo
		if bit.band(handle, GANG_TYPE_BU) > 0 then
			--todo
			for i=1,4 do
				table.insert(progCards, value)
			end
			table.insert(removeCards, value)
		else
			for i=1,3 do
				table.insert(progCards, value)
				table.insert(removeCards, value)
			end
			table.insert(progCards, value)
			if bit.band(handle, GANG_TYPE_AN) > 0 then
				--todo
				table.insert(removeCards, value)
			end
		end
		
	elseif bit.band(handle, CONTROL_TYPE_PENG) > 0 then
		for i=1,2 do
			table.insert(progCards, value)
			table.insert(removeCards, value)
		end
		table.insert(progCards, value)
	elseif bit.band(handle, CONTROL_TYPE_LIANGXI) > 0 then
		progCards={65,66,67}
		removeCards={65,66,67}
	-- elseif bit.band(handle, CHI_TYPE_LEFT) > 0 then
	-- 	for i=value,value + 2 do
	-- 		if value ~= i then
	-- 			--todo
	-- 			table.insert(removeCards, i)
	-- 		end

	-- 		table.insert(progCards, i)
	-- 	end
	-- elseif bit.band(handle, CHI_TYPE_MIDDLE) > 0 then
	-- 	for i=value - 1,value + 1 do
	-- 		if value ~= i then
	-- 			--todo
	-- 			table.insert(removeCards, i)
	-- 		end

	-- 		table.insert(progCards, i)
	-- 	end
	-- elseif bit.band(handle, CHI_TYPE_RIGHT) > 0 then
	-- 	for i=value - 2,value do
	-- 		if value ~= i then
	-- 			--todo
	-- 			table.insert(removeCards, i)
	-- 		end

	-- 		table.insert(progCards, i)
	-- 	end
	end

	self:removeCards(seatId, removeCards)

	return progCards
end

function CardUtils:removeCards(seatId, removeCards)
	local oriCards = TDHMJ_GAMEINFO_TABLE[seatId .. ""].hand

	local count = table.getn(oriCards)
	local removeCount = table.getn(removeCards)

	local removeIndex = 1

	local removeIndexs = {}
	for i=1,count do
		if oriCards[i] == removeCards[removeIndex] or oriCards[i] == 0 then
			--todo
			table.insert(removeIndexs, i)
			removeIndex = removeIndex + 1

			if removeIndex > removeCount then
				--todo
				break
			end
		end
	end

	for i=table.getn(removeIndexs),1,-1 do
		table.remove(oriCards, removeIndexs[i])
	end

	-- local countTest = table.getn(oriCards)
	-- if countTest % 3 ~= 2 then
	-- 	--todo
	-- 	local testStr = "相公seatId:" .. seatId
	-- 	require("hall.GameCommon"):showAlert(true, testStr, 300)
	-- 	dump(removeCards, testStr)
	-- end
end

function CardUtils:playCard(seatId, value)
	local oriCards = TDHMJ_GAMEINFO_TABLE[seatId .. ""].hand

	local tag = nil
	for i=1,table.getn(oriCards) do
		if oriCards[i] == 0 or oriCards[i] == value then
			--todo
			tag = i
			dump(oriCards[i], "remove card test " .. seatId)
			table.remove(oriCards, i)
			return tag
		end
	end

	-- local countTest = table.getn(oriCards)
	-- if countTest % 3 ~= 1 then
	-- 	--todo
	-- 	local testStr = "相公seatId:" .. seatId
	-- 	require("hall.GameCommon"):showAlert(true, testStr, 300)
	-- 	dump(value, testStr)
	-- end

	return tag
end


function CardUtils:getNewCard(seatId, value)
	dump(seatId, "getNewCard seatId test")
	dump(TDHMJ_GAMEINFO_TABLE, "getNewCard TDHMJ_GAMEINFO_TABLE test")

	local oriCards = TDHMJ_GAMEINFO_TABLE[seatId .. ""].hand

	-- self:insertCards(oriCards, value)

	table.insert(oriCards, value)
	table.sort(oriCards)

	dump(oriCards, "sort cards test")

	local countTest = table.getn(oriCards)

	dump(countTest .. " " .. type(seatId) .. " " .. type(TDHMJ_MY_USERINFO.seat_id), "sort cards test")
	dump(countTest .. " " .. seatId .. " " .. TDHMJ_MY_USERINFO.seat_id, "sort cards test")

	if countTest % 3 ~= 2 and seatId == TDHMJ_MY_USERINFO.seat_id then
		--todo
		local testStr = "相公seatId:" .. seatId
		-- require("hall.GameCommon"):showAlert(true, testStr, 300)
		dump(value, testStr)

		display_scene("app.scenes.MainScene")
	end
end

return CardUtils