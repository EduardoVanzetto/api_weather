class BuscaTemperatura
    require 'net/http'
    require 'json' 

    def buscar_agora(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=a142bbf4dcd20f54dda4e8dc3b6fa3fe"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        
        novoJson = {"temperatura": retorno["main"]["temp"],
                    "pressao": retorno["main"]["pressure"],
                    "umidade": retorno["main"]["humidity"],
                    "tempmax": retorno["main"]["temp_max"],
                    "tempmin": retorno["main"]["temp_min"],
                    "velocidadeVento": retorno["wind"]["speed"],
                    "alvorada": Time.at(retorno["sys"]["sunrise"]),
                    "crepusculo": Time.at(retorno["sys"]["sunset"])
                }


        end

end
