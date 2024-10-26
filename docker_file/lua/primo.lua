local versao = _VERSION
print( versao )

print "Começando o código"
--[[ Comentario
de
multiplas
linhas
]]

function main()
    -- Variáveis
    local x
    local i
    local cont = 0
    
    -- Lê um número do usuário
    io.write("Digite um número: ")
    x = tonumber(io.read())

    if x < 1 then
        print("não é primo")
    else
        for i = 1, x do
            if x % i == 0 then
                cont = cont + 1
            end
        end
        
        if cont == 2 then
            print("o número: " .. x .. " é primo")
        else
            print("o número: " .. x .. " não é primo")
        end
    end
end

-- Executa a função principal
main()

print "Terminando o código"

