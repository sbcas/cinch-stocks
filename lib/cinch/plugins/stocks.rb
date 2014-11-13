# *-* coding: utf-8 -*-
require 'cinch'
require 'cinch/cooldown'
require 'time-lord'
require 'stock_quote'

module Cinch
  module Plugins
    # Cinch Plugin to report stock prices
    class Stocks
      include Cinch::Plugin

      enforce_cooldown

      self.help = 'Use .stock <symbol> to see the current market price of a given stock.'

      def initialize(*args)
        super
      end

      match(/stock (.+)/, method: :stock)

      def stock(m, query)
        m.reply get_stock(query)
      end

      private

      def get_stock(query)
        stock = Stock.new(query).to_s
        stock
      rescue ArgumentError
        "Sorry, couldn't find #{query}."
      end
    end
  end
end
