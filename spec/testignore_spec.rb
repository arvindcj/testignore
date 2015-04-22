require 'spec_helper'

describe TestIgnore do
  it "create TestIgnore instance" do
    ignore = TestIgnore::File.new
    puts ignore.inspect
    #expect(TestIgnore.check).to match 'ok'
  end
  it "test2", :test1 do
    puts 2
    #expect(TestIgnore.check).to match 'ok'
  end
  it "test3" do
    puts 3
    #expect(TestIgnore.check).to match 'ok'
  end
end
