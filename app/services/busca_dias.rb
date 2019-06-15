class buscaDias

    require 'net/http'
    require 'json' 

    def buscar_dias(cidade)

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{cidade},BR&APPID=a142bbf4dcd20f54dda4e8dc3b6fa3fe"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        end

end