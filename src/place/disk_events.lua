--script at workspace.disk.Handle.Script

http = game:GetService('HttpService')
GET = function(url) return http:GetAsync(url) end
local module = require(script.Parent.MyModule)
debounce = false


function onOverwrite()
	if not debounce then
		
		print(GET("https://pastebin.com/raw/09xSW8HT"))
		module.setContent(GET("https://pastebin.com/raw/09xSW8HT"))
		script.Parent.Parent = workspace
		script.Parent.Anchored = false
		script.Parent.CanCollide = true
		script.Parent.Position = Vector3.new(script.Parent.Position.X, script.Parent.Position.Y + 1, script.Parent.Position.Z)
		local tool = Instance.new("Tool")
		tool.Parent = workspace
		script.Parent.Parent = tool
		debounce = true
		wait(0.5)
		debounce = false
	end
end

script.Parent.ChildAdded:Connect(onOverwrite)
