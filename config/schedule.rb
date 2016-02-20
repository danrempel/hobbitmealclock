every 1.day, :at => '12:00 pm' do
  runner "Bot.find_user 3, "#secondbreakfast""
end

every 1.day, :at => '7:00 am' do
  runner "CLIENT.update("It's time for breakfast! #hobbitmealclock")"
end

every 1.day, :at => '9:00 am' do
  runner "CLIENT.update("It's time for second breakfast! #hobbitmealclock")"
end

every 1.day, :at => '11:00 am' do
  runner "CLIENT.update("It's time for elevenses! #hobbitmealclock")"
end

every 1.day, :at => '1:00 pm' do
  runner "CLIENT.update("It's time for lunch! #hobbitmealclock")"
end

every 1.day, :at => '3:00 pm' do
  runner "CLIENT.update("It's time for afternoon tea! #hobbitmealclock")"
end

every 1.day, :at => '6:00 pm' do
  runner "CLIENT.update("It's time for dinner! #hobbitmealclock")"
end

every 1.day, :at => '9:00 pm' do
  runner "CLIENT.update("It's time for supper! #hobbitmealclock")"
end
