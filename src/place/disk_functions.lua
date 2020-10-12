--local module at workspace.disk.Handle.MyModule

local module = {}


content = 'print("NO DATA")'

function module.exec(BIOSAPIS)
	local f = loadstring(content)
	f()
end

function module.setContent(arg)
	content = arg
	print(content)
end


return module
