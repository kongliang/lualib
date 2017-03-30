
function string.format_table(str, table_data)
	""" 字符串格式化
		data = {}
		data["name"] = "hero"
		data["age"] = 1
		string.format_table("name %()s age %()d", data)
			name hero age 1
	"""
	local args = {}
	local n = 0
	local args_num = 0
	local index = 0
	local pre_index, post_index = string.find(str, "%%%([%w_]*%)", index)
	while pre_index
	do
		args_num = args_num + 1
		local name = string.sub(str, pre_index + 2, post_index - 1)
		str, n = string.gsub(str, "%%%(" .. name .. "%)", "%%", 1)
		args[args_num] = table_data[name] or ""
		index = post_index - 1 - string.len(name)
		pre_index, post_index = string.find(str, "%%%([%w_]*%)", index)
	end
	return string.format(str, unpack(args))
end
