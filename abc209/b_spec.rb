require 'rspec'
require 'stringio'
require_relative 'b'

RSpec.describe B do
  it 'example 1' do
    input = <<~INPUT
      2 3
      1 3
    INPUT
    $stdin = StringIO.new(input)
    b = B.new
    expect(b.exec).to eq 'Yes'
  end

  it 'example 2' do
    input = <<~INPUT
      4 10
      3 3 4 4
    INPUT
    $stdin = StringIO.new(input)
    b = B.new
    expect(b.exec).to eq 'No'
  end

  it 'example 3' do
    input = <<~INPUT
      8 30
      3 1 4 1 5 9 2 6
    INPUT
    $stdin = StringIO.new(input)
    b = B.new
    expect(b.exec).to eq 'Yes'
  end
end
