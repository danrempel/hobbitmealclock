every 1.day, :at => '12:00 pm' do
  runner "Bot.find_user 3, "#secondbreakfast""
end

every 1.day, :at => '7:00 am' do
  runner "Bot.breakfast"
end

every 1.day, :at => '9:00 am' do
  runner "Bot.second_breakfast"

every 1.day, :at => '11:00 am' do
  runner "Bot.elevenses"

every 1.day, :at => '1:00 pm' do
  runner "Bot.lunch"

every 1.day, :at => '3:00 pm' do
  runner "Bot.afternoon_tea"

every 1.day, :at => '6:00 pm' do
 runner "Bot.dinner"

every 1.day, :at => '9:00 pm' do
  runner "Bot.supper"
