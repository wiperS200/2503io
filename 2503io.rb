require 'discordrb'

idAndToken = []
i = 0
File.open("CLIENT_ID_AND_TOKEN", mode = "rt") do |f|
  f.each_line do |line|
    idAndToken[i] = line.chomp
    i += 1
 end
end

bot = Discordrb::Commands::CommandBot.new(
  client_id: idAndToken[0],
  token: idAndToken[1],
  prefix: '', # なくてもいけるっぽい
)

bot.command :あけ do |event| # ひらがなでいけた
  event.send_message("#{event.user.name} opened 2503.")
end

bot.command :しめ do |event|
  event.send_message("#{event.user.name} が鍵を閉めました")
  sleep 180
  event.send_message("#{event.user.mention} 返しましたか？")
end

bot.run
