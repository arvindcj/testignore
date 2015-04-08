require "erb"

# build data class
class Listings
  PRODUCT = { :name => "Chicken Fried Steak",
              :desc => "A well messages pattie, breaded and fried.",
              :cost => 9.95 }

  attr_reader :product, :price

  def initialize( product = "", price = "" )
    @product = product
    @price = price
  end

  def build
    b = binding
    # create and run templates, filling member data variables
    ERB.new("      <%= PRODUCT[:name] %>
      <%= PRODUCT[:desc] %>
".gsub(/^\s+/, ""), 0, "", "@product").result b
    ERB.new("      <%= PRODUCT[:name] %> -- <%= PRODUCT[:cost] %>
      <%= PRODUCT[:desc] %>
".gsub(/^\s+/, ""), 0, "", "@price").result b
  end
end

# setup template data
listings = Listings.new
listings.build

puts listings.product + "\n" + listings.price
