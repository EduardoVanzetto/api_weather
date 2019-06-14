class buscaHoras

    require ’net/http’
    require ‘json’ 

    def buscar(cidade)

        url = "http://api.openweathermap.org/data/2.5/weather?APPID=b878ec13fee88f9ef63b6d47bf248f8f&q=#{cidade},br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        end

end