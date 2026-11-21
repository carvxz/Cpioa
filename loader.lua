
return function(nome)
    if type(nome) ~= "string"
        or not nome:match("^[%w%- ]+$") then
        return
    end

    local arquivo = nome:gsub(" ", "%%20")

    local url = "https://raw.githubusercontent.com/carvxz/Cpioa/main/" .. arquivo .. ".md"

    local ok, codigo = pcall(function()
        return game:HttpGet(url)
    end)

    if not ok then
        return
    end

    local executar = loadstring(codigo)

    if not executar then
        return
    end

    pcall(executar)
end
