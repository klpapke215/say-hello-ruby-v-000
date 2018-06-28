require_relative './spec_helper'

describe "say_hello" do

  it 'accepts an argument of a name and prints out Hello with that Name' do
    say_hello("Kent Beck")
    expect($stdout).to receive(:puts).with("Hello Kent Beck!")
  end

  it 'defaults to Ruby Programmer when no name is passed in' do
    say_hello()
    expect($stdout).to receive(:puts).with("Hello Ruby Programmer!")
  end
end
