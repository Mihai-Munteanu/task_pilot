class WeatherTool < RubyLLM::Tool
  description "Get current weather"
  param :latitude
  param :longitude

  def execute(latitude:, longitude:)
    url = "https://api.open-meteo.com/v1/forecast?latitude=#{latitude}&longitude=#{longitude}&current=temperature_2m,wind_speed_10m"
    JSON.parse(Faraday.get(url).body)
  end
end