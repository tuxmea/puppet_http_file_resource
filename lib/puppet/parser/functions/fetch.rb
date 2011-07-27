Puppet::Parser::Functions::newfunction(:fetch, :type => :rvalue) do |args|
	require 'net/http'
	require 'uri'
	url = URI.parse(args[0])
	req = Net::HTTP::Get.new(url.path)
	res = Net::HTTP.start(url.host, url.port) {|http|
	  http.request(req) 
	}
	return res.body
end

