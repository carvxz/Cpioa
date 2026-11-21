
local scripts = {
    ["Cpioa"] = "Cpioa.md",
    ["Crazy8"] = "Crazy-8-up.md",
    ["Criminal"] = "Criminal.md",
    ["Koi"] = "Koi.md"
}

return function(nome)
    local arquivo = scripts[nome]

    if not arquivo then
        warn("Script não encontrado: " .. tostring(nome))
        return
    end

    local url = "https://raw.githubusercontent.com/carvxz/Cpioa/main/" .. arquivo

    local codigo = game:HttpGet(url)
    local executar, erro = loadstring(codigo)

    if not executar then
        warn("Erro: " .. tostring(erro))
        return
    end

    return executar()
end
