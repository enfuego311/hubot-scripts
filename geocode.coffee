# uses google to geocode a location

api_key = process.env.GOOGLE_API_KEY


getGeocode = (msg, terms) ->
  url = "https://maps.googleapis.com/maps/api/geocode/json?key=" + api_key
  if terms and terms[0] != ''
    url += '&address=' + terms[0]
    for i in [1...terms.length]
      url += ('+' + terms[i]) if terms[i].length > 0
  msg.http(url).get() (err, res, body) ->
    response = JSON.parse(body);
    location = response.results[0].geometry.location.lat + ", " + response.results[0].geometry.location.lng
    msg.send(location)

module.exports = (robot) ->
  robot.hear /^geocode (.*)/i, (msg) ->
    terms = msg.match[1].trim().split(' ')
    getGeocode(msg, terms)
