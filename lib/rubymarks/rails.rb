module Rubymarks
  module Rails

    def self.included(base)
      base.extend Rubymarks
    end

  end
end