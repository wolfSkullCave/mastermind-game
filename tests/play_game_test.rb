require_relative "../lib/play_game"

test_play = PlayGame.new

puts "code: #{test_play.code}"

# test_play.get_code
# if test_play.guess
#   # puts test_play.guess
#   # puts test_play.common_compare
# end

test_play.play
