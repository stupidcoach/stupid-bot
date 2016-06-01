require 'slack-ruby-bot'


class PongBot < SlackRubyBot::Bot
  match /(ping|pong)/ do |client, data, match|
    pingpong = ['ping', 'pong'].sample
    client.say(gif: pingpong, text: pingpong, channel: data.channel)
  end

  match /(ryan|robert|kirsten)/ do |client, data, match|
    client.say(gif: "#{match} #{rand(1..2) == 1 ? 'gosling' : 'boobs'}", channel: data.channel)
  end
end

PongBot.run
