--script at workspace.disk_station.proceed.Script

function overwrite()
	local tempChild = Instance.new("Part")
	tempChild.Parent = script.Parent.Parent.CDROM.Handle
	wait(0.5)
	script.Parent.Parent.CDROM.Handle.Part:Destroy()
	print('removed')
end

script.Parent.ClickDetector.MouseClick:Connect(overwrite)
