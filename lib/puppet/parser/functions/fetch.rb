require 'net/http'
module Puppet::Parser::Functions
	newfunction(:fetch) do |args|
		url = URI.parse($args)
		req = Net::HTTP::Get.new(url.path)
		res = Net::HTTP.start(url.host, url.port) {|http| http.request(req) }
	end
end

