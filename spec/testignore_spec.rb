require 'spec_helper'

describe TestIgnore do

  subject { TestIgnore::IgnoreFile.new }

  it "create TestIgnore instance" do
    subject.instance_variable_set(:@testignore_file, '.testignore')
    expect(subject.instance_variable_get(:@testignore_file)).to eq('.testignore') 
  end

  it "instance" do
    expect(subject).to receive(:someting)
    puts subject.someting 
    #puts subject.methods
  end
end