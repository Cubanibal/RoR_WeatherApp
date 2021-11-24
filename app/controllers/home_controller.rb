class HomeController < ApplicationController
  def index
  
    require 'net/http'
    require 'json'

    @url_oc = URI("https://opendata.aemet.es/opendata/api/observacion/convencional/todas?api_key=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdWJhbmliYWxAaG90bWFpbC5jb20iLCJqdGkiOiIyYTdkNWE1YS00YTM0LTRkYjEtOWUyMS1hZTBmMTZmMGM1ZjciLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYyNjE5MTgyOSwidXNlcklkIjoiMmE3ZDVhNWEtNGEzNC00ZGIxLTllMjEtYWUwZjE2ZjBjNWY3Iiwicm9sZSI6IiJ9.WuQ4ezid3wNtsOhdC8zGLG5rJPbAmowBVJuNrFeXL_8")
    @uri_oc = URI(@url_oc)
    @response_oc = Net::HTTP.get(@uri_oc)
    @valores_oc = JSON.parse(@response_oc)
    @todas = @valores_oc["datos"]
    @uri2_todas = URI(@todas)
    @response2_todas = Net::HTTP.get(@uri2_todas)
    @valor_todas = JSON.parse(@response2_todas)

    



  end
  
  def estacion
    @idema = params['miform']
    if @idema
      require 'net/http'
      require 'json'

      @url_estacion = URI("https://opendata.aemet.es/opendata/api/observacion/convencional/datos/estacion/"+@idema+"?api_key=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdWJhbmliYWxAaG90bWFpbC5jb20iLCJqdGkiOiIyYTdkNWE1YS00YTM0LTRkYjEtOWUyMS1hZTBmMTZmMGM1ZjciLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYyNjE5MTgyOSwidXNlcklkIjoiMmE3ZDVhNWEtNGEzNC00ZGIxLTllMjEtYWUwZjE2ZjBjNWY3Iiwicm9sZSI6IiJ9.WuQ4ezid3wNtsOhdC8zGLG5rJPbAmowBVJuNrFeXL_8")
      @uri_estacion = URI(@url_estacion)
      @response_estacion = Net::HTTP.get(@uri_estacion)
      @valores_estacion = JSON.parse(@response_estacion)
      @tiempo_estacion = @valores_estacion["datos"]
      @uri_tiempo_estacion = URI(@tiempo_estacion)
      @response2_estacion = Net::HTTP.get(@uri_tiempo_estacion)
      @valores2_estacion = JSON.parse(@response2_estacion)
    end

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
  
  def municipios
    require 'net/http'
    require 'json'

    @url_municipios = URI("https://opendata.aemet.es/opendata/api/maestro/municipios/?api_key=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjdWJhbmliYWxAaG90bWFpbC5jb20iLCJqdGkiOiIyYTdkNWE1YS00YTM0LTRkYjEtOWUyMS1hZTBmMTZmMGM1ZjciLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYyNjE5MTgyOSwidXNlcklkIjoiMmE3ZDVhNWEtNGEzNC00ZGIxLTllMjEtYWUwZjE2ZjBjNWY3Iiwicm9sZSI6IiJ9.WuQ4ezid3wNtsOhdC8zGLG5rJPbAmowBVJuNrFeXL_8")
    @uri_municipios = URI(@url_municipios)
    @response_municipios = Net::HTTP.get(@uri_municipios)
    @valores_municipios = JSON.parse(@response_municipios)
    
    end
    
end
