# Tenor search top result
#
#
api_key = process.env.TENOR_API_KEY
filter = 'low'

getSearchTenor = (msg, terms) ->
  url = 'https://api.tenor.com/v1/search?key='+api_key
  if terms and terms[0] != ''
    url += '&limit=1&media_filter=minimal&contentfilter='+filter+'&q=' + terms[0]
    for i in [1...terms.length]
      url += ('+' + terms[i]) if terms[i].length > 0
  msg.http(url).get() (err, res, body) ->
    response = JSON.parse(body);
    msg.send(response.results[0].media[0].gif.url)

module.exports = (robot) ->
  robot.hear /^sgif(.*)/i, (msg) ->
    terms = msg.match[1].trim().split(' ')
    getSearchTenor(msg, terms)
