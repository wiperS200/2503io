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
  client_id: idAndToken[0].to_i,
  token: idAndToken[1],
  prefix: '/',
)

bot.command :hello do |event|
  event.send_message("hello,#{event.user.name}.")
end

bot.run
