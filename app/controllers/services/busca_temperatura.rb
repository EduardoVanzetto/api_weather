class BuscaTemperatura
    require ’net/http’
    require ‘json’ 

    def buscar(cidade)

        #cidade = params{:cidade}
        url = "https://samples.openweathermap.org/data/2.5/weather?q=#{buscar}&appid=b6907d289e10d714a6e88b30761fae22"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        end

end
