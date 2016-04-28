-- require("./sys")

DIR_GITHOOK = "$GOPATH/src/github.com/sunreaver/github_hook/"

function gitpull(...)
	local exc = {}
	exc[1] = "cd " .. DIR_GITHOOK
	exc[2] = "git pull"
	local result = ""
	for i=1,table.maxn(exc) do
		result = result .. exc[i] .. ";"
	end
	r = string.sub(result, 0, string.len(result)-1)
	-- print(r)
	os.execute(r)
end

print("pull...")
gitpull()
print(string.format([[↑ DO AT: %s]], os.date("%Y-%m-%d %H:%M:%S")))

