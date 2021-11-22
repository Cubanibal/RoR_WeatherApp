class HomeController < ApplicationController
  def index
  
  @url_estacion = URI("https://opendata.aemet.es/opendata/api/observacion/convencional/datos/estacion/3260B?api_key=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdWJhbmliYWxAaG90bWFpbC5jb20iLCJqdGkiOiIyYTdkNWE1YS00YTM0LTRkYjEtOWUyMS1hZTBmMTZmMGM1ZjciLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYyNjE5MTgyOSwidXNlcklkIjoiMmE3ZDVhNWEtNGEzNC00ZGIxLTllMjEtYWUwZjE2ZjBjNWY3Iiwicm9sZSI6IiJ9.WuQ4ezid3wNtsOhdC8zGLG5rJPbAmowBVJuNrFeXL_8")
  @uri_estacion = URI(@url_estacion)
  @response_estacion = Net::HTTP.get(@uri_estacion)
  @valores_estacion = JSON.parse(@response_estacion)
  @tiempo_estacion = @valores_estacion["datos"]
  @uri_tiempo_estacion = URI(@tiempo_estacion)
  @response2_estacion = Net::HTTP.get(@uri_tiempo_estacion)
  @valores2_estacion = JSON.parse(@response2_estacion)



  end
  def estaciones
    require 'net/http'
    require 'json'


    @url = URI("https://opendata.aemet.es/opendata/api/valores/climatologicos/inventarioestaciones/todasestaciones/?api_key=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdWJhbmliYWxAaG90bWFpbC5jb20iLCJqdGkiOiIyYTdkNWE1YS00YTM0LTRkYjEtOWUyMS1hZTBmMTZmMGM1ZjciLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYyNjE5MTgyOSwidXNlcklkIjoiMmE3ZDVhNWEtNGEzNC00ZGIxLTllMjEtYWUwZjE2ZjBjNWY3Iiwicm9sZSI6IiJ9.WuQ4ezid3wNtsOhdC8zGLG5rJPbAmowBVJuNrFeXL_8")
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @valores = JSON.parse(@response)
    @tiempo = @valores["datos"]
    @uri_tiempo = URI(@tiempo)
    @response2 = Net::HTTP.get(@uri_tiempo)
    @valores2 = JSON.parse(@response2)
    


  end
end
