require 'net/http'
require 'json'
require 'uri'

SCHEDULER.every '120s', :first_in => 0 do |job|
  uri = URI.parse('http://api.coindesk.com/v1/bpi/currentprice.json')
  http = Net::HTTP.new(uri.host, uri.port)
  #http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  json_response = JSON.parse(response.body)
  btc_price = json_response['bpi']['USD']['rate']
  btc_price = '%.2f' % btc_price.delete(',').to_f
  #puts btc_price
  send_event('btcprice', { value: btc_price.to_f} )
end
