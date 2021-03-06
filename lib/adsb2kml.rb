
require 'ruby_kml'

require_relative "ruby_kml/label_style.rb"

require_relative "adsb2kml/listener.rb"
require_relative "adsb2kml/database.rb"
require_relative "adsb2kml/airplane.rb"

module ADSB
	
	$MESSAGE_FORMAT = /^(?<type>(MSG|STA|ID|AIR|SEL|CLK)),(?<subtype>(1|2|3|4|5|6|7|8)?),(?<session_id>\d*),(?<aircraft_id>\d*),(?<address>\h{6}),(?<flight_id>\d*),\w*,\w*,\w*,\w*,(?<callsign>(\w|\s)*),(?<altitude>\d*),(?<speed>\d*),(?<track>\d*),(?<latitude>(-?\d{1,3}\.\d{5})?),(?<longitude>(-?\d{1,3}\.\d{5})?),(?<vert_rate>-?\d*),(?<squawk>\d*),(?<alert>\d*),(?<emergency>\d*),(?<ident>\d*),(?<ground>\d*)$/

	$STRING_FORMAT = "%10s %10s %10s %10s %10s %10s %10s %10s\n"
	

end
