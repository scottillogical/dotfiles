require 'rubygems'

require '/users/humblepatience/.irb/wirble-0.1.3.rb'
#require 'utility_belt'
begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end



