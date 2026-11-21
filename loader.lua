
return function(nome)
    if type(nome) ~= "string"
        or not nome:match("^[%w%-]+$") then
        warn("Nome inválido!")
        return
    end

    local url = "https://raw.githubusercontent.com/carvxz/Cpioa/main/" .. nome .. ".md"

    local ok, codigo = pcall(function()
        return game:HttpGet(url)
    end)

    if not ok then
        warn("Erro ao baixar o script!")
        return
    end

    local executar, erro = loadstring(codigo)

    if not executar then
        warn("Erro: " .. tostring(erro))
        return
    end

    return executar()
end
