# uses google geocode and openweathermap to get weather for location

weather_api_key = process.env.WEATHER_API_KEY
google_api_key = process.env.GOOGLE_API_KEY

module.exports = (robot) ->
  robot.hear /^weather (.*)/i, (msg) ->
    terms = msg.match[1].trim().split(' ')
    getGeocode(msg, terms)

getGeocode = (msg, terms) ->
  url = "https://maps.googleapis.com/maps/api/geocode/json?key=" + google_api_key
  if terms and terms[0] != ''
    url += '&address=' + terms[0]
    for i in [1...terms.length]
      url += ('+' + terms[i]) if terms[i].length > 0
  msg.http(url).get() (err, res, body) ->
    response = JSON.parse(body);
    geolat = response.results[0].geometry.location.lat
    geolon = response.results[0].geometry.location.lng
    weatherurl = 'http://api.openweathermap.org/data/2.5/weather?appid='+weather_api_key+'&lat='+geolat+'&lon='+geolon
    weatherurl += '&units=imperial'
    locmapurl = 'https://maps.googleapis.com/maps/api/staticmap?center='+geolat+','+geolon+'&zoom=11&size=600x200&key='+google_api_key

    msg.http(weatherurl).get() (err, res, body) ->
      wresponse = JSON.parse(body);
      temp = wresponse.main.temp
      city = wresponse.name
      country = wresponse.sys.country
      cond = wresponse.weather[0].description
      feelslike = wresponse.main.feels_like
      humidity = wresponse.main.humidity
      icon = wresponse.weather[0].icon
      msg.send locmapurl
      msg.send(city + ', ' + country + ': ' + temp + 'F (' + cond + ')')
      msg.send('Humidity: ' + humidity + '% - Feels Like: ' + feelslike + 'F')
