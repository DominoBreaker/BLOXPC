--local module at workspace.disk.Handle.MyModule

local module = {}


content = 'print("NO DATA")'

function module.exec(BIOSAPIS)
	loadstring(content)
end

function module.setContent(arg)
	content = arg
	print('shoot')
end


return module
