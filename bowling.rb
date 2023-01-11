class Game
  attr_reader :score, :frames

  def initialize(score = 0)
    @score = score
    @frames = []
    10.times { |_n| @frames << Frame.new }
  end

  def self.roll(pins); end

  def score
    puts @score
  end

  def print_frames
    @frames.each { |_frame| puts _frame.inspect }
  end
end

class Frame
  def initialize(pins = 10)
    @pins = pins
  end

  def complete?
    @pins.zero?
  end
end

game = Game.new
game.print_frames
