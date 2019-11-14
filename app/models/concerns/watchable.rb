module Watchable
  include ActiveSupport::Concern

  class Watch
    def watch
      puts "WATCHING: #{self.class}"
    end
  end

  def self.included(mod)
    puts "#{self} included in #{mod}"
    define_method :new_method do
      puts "New Method!"
    end

    def method_missing(methodID)
      puts "We're watchable now but #{methodID} doesn't exist"
    end
  end
end