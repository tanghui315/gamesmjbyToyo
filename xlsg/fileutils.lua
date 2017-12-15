local FileUtils = class("FileUtils")

function FileUtils:ctor()
end

function FileUtils:getStringFromFile(filepath)
	-- body
	local writepath = cc.FileUtils:getInstance():getWritablePath()
	local test_filepath = writepath .. "xlsg/"..filepath
	local filedata = cc.FileUtils:getInstance():getStringFromFile(test_filepath)

	if filedata == "" then
 		filedata = cc.FileUtils:getInstance():getStringFromFile("xlsg/"..filepath)
	end

	return filedata
end

function FileUtils:isFileExist(test_path)
	-- body
	local ret = false
	local writepath = cc.FileUtils:getInstance():getWritablePath()
	local w_test_path = writepath .. "xlsg/"..test_path

	ret = cc.FileUtils:getInstance():isFileExist(w_test_path)
	if ret == false then
		ret = cc.FileUtils:getInstance():isFileExist("xlsg/"..test_path)
	end
	return ret
end

return FileUtils