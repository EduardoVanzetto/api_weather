class BuscaHoras

    require 'net/http'
    require 'json' 
    require 'time'

    def buscar_horas(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{cidade},BR&APPID=a142bbf4dcd20f54dda4e8dc3b6fa3fe"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        result = []

        retorno["list"].each do |horario|
            result << {Hora: Time.at(horario["dt"]),
            Clima: horario["clouds"]["all"],
            Descrição: horario["weather"][0]["description"],
            Temperatura: horario["main"]["temp"],
            Pressão: horario["main"]["pressure"],
            Humidade: horario["main"]["humidity"],
            Temperatura_Minima: horario["main"]["temp_min"],
            Temperatura_Maxima: horario["main"]["temp_max"],
            Vento: horario["wind"]["speed"]
            }
        end

        result

    end

end