require 'thor'
require 'fodie'

require 'fodie/generators/recipe'

module Fodie
  class CLI < Thor

    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
      Fodie::Generators::Recipe.start([group, name])
    end

    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts Fodie::Food.portray(name)
    end

    desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts Fodie::Food.pluralize(options[:word])
    end


  end
end
