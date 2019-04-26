require 'discordrb'

idAndToken = []
File.open("CLIENT_ID_AND_TOKEN", mode = "rt") {|f|
  idAndToken = f.readlines
}

bot = Discordrb::Commands::CommandBot.new (
  token: ,
  client_id: ,
  prefix:'/',
)

bot.command :hello do |event|
  event.send_message("hello,#{event.user.name}.")
end

bot.run
