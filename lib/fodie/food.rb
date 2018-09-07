module Fodie
  class Food
    def self.portray(foodname)
      if foodname.downcase == 'broccoli'
        "Gross!"
      else
        "Delicious!"
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end