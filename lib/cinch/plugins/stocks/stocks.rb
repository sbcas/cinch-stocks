# -*- coding: utf-8 -*-
module Cinch
  module Plugins
    class Stocks
      # Class to manage information for current stock prices
      class Stock
        attr_reader :symbol

        def initialize(symbol)
          @data = StockQuote::Stock.quote(symbol)

          fail ArgumentError if @data.nil?

          @symbol = @data.symbol
          @name = "(#{@data.name})"
          @last_trade = @data.last_trade_price_only
          @change_percent = "(#{@data.change_percent_change})"
          @close = @data.previous_close
          @open = @data.open
          @high = @data.days_high
          @low = @data.days_low
        end

        def to_s
          "#{@symbol} #{@name} price: #{@last_trade} #{@change_percent} " \
          "close: #{@close} open: #{@open} high: #{@high} low: #{@low}"
        end
      end
    end
  end
end
