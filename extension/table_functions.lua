
require "functions"

function table.list_append(tbl, obj)
	table.insert(tbl, obj)
end


function table.list_index(tbl, value, start, stop)
	if not start then
		start = 1
	end
	if not stop then
		stop = #tbl
	end
	for i=start, stop do
		if tbl[i] == x then
			return i
		end
	end
end


function table.list_remove(tbl, value)
	for i=1, #tbl do
		if tbl[i] == value then
			table.remove(tbl, i)
			return true
		end
	end
	return false
end


function table.list_count(tbl, value)
	local cnt = 0;
	for i=1, #tbl do
		if tbl[i] == value then
			cnt = cnt + 1
		end
	end
	return cnt
end


function table.list_insert(tbl, index, obj)
	table.insert(tbl, index, obj)
end


function table.list_reverse(p)
	local t, tmp = {}, 0
	local n, d = math.modf(#p/2)
	d = math.ceil(d) + 1
	local m = 2 * n
	for i=1,n do
		p[i], p[m-i+d] = p[m-i+d], p[i]
	end
end


-- a = {}
-- b = {1,2,3,4,5}
-- table.extend(a, b)
-- print(a) -> {1,2,3,4,5}
function table.list_extend(tbl, list)
	for i=1, #list do
		table.insert(tbl, list[i])
	end
end


function table.list_pop(tbl, index)
	if not index then
		return table.remove(tbl)
	else
		return table.remove(tbl, index)
	end
end


function table.list_sort(tbl, cmp)
	table.sort(tbl, cmp)
end


function table.dict_clear(tbl)
	
end

