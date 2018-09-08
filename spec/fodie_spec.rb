require 'fodie'
require 'active_support/inflector'


RSpec.describe Fodie::Food do
  it "has a version number" do
    expect(Fodie::VERSION).not_to be nil
  end

  it "broccoli is gross" do
    expect(Fodie::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Fodie::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(Fodie::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
