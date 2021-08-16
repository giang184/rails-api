class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  def self.search(parameter)
    quotesArray = []
    Quote.all.each { |quote|
      if (quote.author == parameter)
        quotesArray.push(quote)
      end
    }
    quotesArray
  end
end