#Write your ruby methods here!
def action(action)
community_cards=[[rand(1..13), rand(1..4)],[rand(1..13), rand(1..4)],[rand(1..13), rand(1..4)]]
player_cards=[[rand(1..13), rand(1..4)],[rand(1..13), rand(1..4)]]
comp_cards=[[rand(1..13), rand(1..4)],[rand(1..13), rand(1..4)]]
  return player_cards
end

puts action("call")
puts action("fold")
puts action("raise")