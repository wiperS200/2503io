require 'discordrb'

idAndToken = []
i = 0
File.open("CLIENT_ID_AND_TOKEN", mode = "rt") do |f|
  f.each_line do |line|
    idAndToken[i] = line.chomp
    i += 1
 end
end

p idAndToken
bot = Discordrb::Commands::CommandBot.new(
  client_id: idAndToken[0],
  token: idAndToken[1],
  prefix: '/',
)

bot.command :open do |event|
  event.send_message("#{event.user.name} opened 2503.")
end

bot.command :close do |event|
  event.send_message("#{event.user.name} closed 2503.")
end

bot.run
