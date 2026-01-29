Name = "power-profiles"
NamePretty = "Perfis de desempenho"
HideFromProviderlist = true
Cache = false
Action = "powerprofilesctl set %VALUE%; notify-send 'Perfil definido' 'para %VALUE%'"

function GetEntries()
	local entries = {}
	local handle = io.popen("powerprofilesctl")

	if not handle then
		return entries
	end

	for line in handle:lines() do
		local profile_name = line:match("^[* ] ([%a-]+):")

		if profile_name then
			local is_current = line:match("^%*")
			local prefix = is_current and "* " or ""
			local display_name = profile_name:gsub("^%l", string.upper):gsub("-", " ")

			table.insert(entries, {
				Text = prefix .. display_name,
				Value = profile_name,
				state = is_current and { "current" } or nil,
			})
		end
	end

	handle:close()

	if #entries == 0 then
		table.insert(entries, {
			Text = "Perfis de desempenho não encontrados!",
			Value = "",
		})
	end

	return entries
end
