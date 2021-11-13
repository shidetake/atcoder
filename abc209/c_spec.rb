require 'rspec'
require 'stringio'
require_relative 'c'

RSpec.describe C do
  it 'example 1' do
    input = <<~INPUT
      2
      1 3
    INPUT
    $stdin = StringIO.new(input)
    c = C.new
    expect(c.exec).to eq '2'
  end

  it 'example 2' do
    input = <<~INPUT
      4
      3 3 4 4
    INPUT
    $stdin = StringIO.new(input)
    c = C.new
    expect(c.exec).to eq '12'
  end

  it 'example 3' do
    input = <<~INPUT
      2
      1 1
    INPUT
    $stdin = StringIO.new(input)
    c = C.new
    expect(c.exec).to eq '0'
  end
end
