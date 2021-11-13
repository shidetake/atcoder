require 'rspec'
require 'stringio'
require_relative 'a'

RSpec.describe A do
  it 'example 1' do
    $stdin = StringIO.new('180')
    a = A.new
    expect(a.exec).to eq 'Yay!'
  end

  it 'example 2' do
    $stdin = StringIO.new('200')
    a = A.new
    expect(a.exec).to eq ':('
  end

  it 'example 3' do
    $stdin = StringIO.new('191')
    a = A.new
    expect(a.exec).to eq 'so-so'
  end
end
