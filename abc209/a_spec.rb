require 'rspec'
require 'stringio'
require_relative 'a'

RSpec.describe A do
  it 'example 1' do
    input = <<~INPUT
      2 4
    INPUT
    $stdin = StringIO.new(input)
    a = A.new
    expect(a.exec).to eq '3'
  end

  it 'example 2' do
    input = <<~INPUT
      10 100
    INPUT
    $stdin = StringIO.new(input)
    a = A.new
    expect(a.exec).to eq '91'
  end

  it 'example 3' do
    input = <<~INPUT
      3 2
    INPUT
    $stdin = StringIO.new(input)
    a = A.new
    expect(a.exec).to eq '0'
  end
end
