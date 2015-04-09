require 'spec_helper'

describe TestIgnore do
  it "test1", :test1, :test2 do
    puts 1
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
