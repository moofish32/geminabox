$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "geminabox"

use Rack::Auth::Basic, "GemInAbox" do |username, password|
  ENV['GEMINABOX_PW'] == password
end

run Geminabox
