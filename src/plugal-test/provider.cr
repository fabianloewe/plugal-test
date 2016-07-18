require "plugal"

class TestProvider
  include Plugal::Provider

  provide :test do |first, second|
    first + "=" + second.to_s
  end
end