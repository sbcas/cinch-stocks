require 'spec_helper'

describe Cinch::Plugins::Stocks do

  include Cinch::Test

  before(:each) do
    @bot = make_bot(Cinch::Plugins::Stocks)
  end

  describe 'stock' do
    it 'should allow users to ask for stock prices by symbol' do
      msg = make_message(@bot, '!stock goog')
      expect(get_replies(msg).last.text)
        .to include('WDAY (Workday, Inc. Com)')
    end
  end
end
