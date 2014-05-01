require 'ruby_kml'


module ADSB
	class Airplane
		
		@@info = [
			:latitude,
			:longitude,
			:last_heard,
			:speed,
			:vert_rate,
			:track
		]

		@@info.each do |x|
			attr_accessor x
		end

		attr_reader :address

		def initialize address
			@address = address
			@altitude = 0
		end

		def merge airplane
			if airplane.address != @address then
				return false
			end
			
			@@info.each do |x|
				if ! airplane.send(x).empty? then
					send( x.to_s + "=" , airplane.send(x) )
				end
			end

			return true
		end

		def placemark
			to_return = KML::Placemark.new(
				:name => @address,
				:geometry => KML::Point.new(
					:coordinates => {
						:lat => @latitude,
						:lng => @longitude,
						:alt => @altitude
					}
				)
			)

			return to_return
		end

		def to_s
			return "TODO"
		end
			
	end
end
