require 'slack-ruby-bot'


class PongBot < SlackRubyBot::Bot
  match /(ping|pong)/ do |client, data, match|
    pingpong = %w(ping pong).sample
    client.say(gif: pingpong, text: pingpong, channel: data.channel)
  end

  match /(ryan|robert|kirsten)/ do |client, data, match|
    client.say(gif: "#{match} #{rand(1..2) == 1 ? 'gosling' : 'boobs'}", channel: data.channel)
  end

  match /ruby|code/ do |client, data, match|
    language = %w(ruby javascript rust elixir python).sample
    client.say(gif: language, text: ":troll: #{language} :troll:", channel: data.channel)
  end

  match /tenderness/ do |client, data, match|
    client.say(gif: 'camille rowe', text: 'Camille in a row', channel: data.channel)
  end

  match /lovelyness/ do |client, data, match|
    client.say(gif: 'kirsten stewart', text: 'Kirsten :heart: vampire', channel: data.channel)
  end

  match /awesomeness/ do |client, data, match|
    client.say(gif: 'ryan hey girl', text: 'He drives', channel: data.channel)
  end

  match /soso/ do |client, data, match|
    client.say(gif: 'matthew mcconaughey', text: '6pack and a soul', channel: data.channel)
  end

  match /dog/ do |client, data, match|
    client.say(gif: 'cute akita', text: 'All you need is dog', channel: data.channel)
  end
end

PongBot.run
