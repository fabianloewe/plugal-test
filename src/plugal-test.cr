require "./plugal-test/*"
require "plugal"
require "option_parser"

Plugal.command :love, me: String, you: String, result: String

class MyProvider
  include Plugal::Provider

  provide :love do |me, you|
    "#{me} + #{you}"
  end
end

class MyReceiver
  include Plugal::Receiver

  receive :love do |result|
    puts result.data
  end
end

OptionParser.parse! do |parser|
  parser.banner = "Usage: plugal-test [-r|-p]"
  parser.on "-r", "Starts the receiver" do
    recv = MyReceiver.new
    recv.run do 
      recv.send :love, me: "Victor", you: "Victoria"
    end
  end
  
  parser.on "-p", "Starts the provider" do
    MyProvider.new.run "MyReceiver"
  end
end