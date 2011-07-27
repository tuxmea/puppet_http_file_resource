Puppet::Type.newtype(:http_file) do
	@doc = "Fetch files via http"

	ensurable

	newparam(:source) do
		desc "The http protocol, servername, port, path and filename"

	end

	newparam(:http_proxy) do
		desc "The http proxy to use"

	end

	newparam(:path) do
		desc "The destination"

		validate do |value|
			unless value =~/^\/[a-z0-9]+/
				raise ArgumentError , "%s is not a vaild file name" % value
			end
		end
		isnamevar
	end

	newparam(:owner) do
		desc "The desired owner"

	end

	newparam(:group) do
		desc "The desired owner"

	end

	newparam(:mode) do
		desc "The desired mode"

	end
end

