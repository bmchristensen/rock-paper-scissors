class Game

  attr_accessor :started, :finished

  def start
    @started = true
    @finished = false
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)

    if (left == :rock && right == :scissors)
      @finished = true
      "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      @finished = true
      "Rock beats scissors!"
    elsif (left == :paper && right == :rock)
      @finished = true
      "Paper beats rock!"
    elsif (left == :rock && right == :paper)
      @finished = true
      "Paper beats rock!"
    elsif (left == :scissors && right == :paper)
      @finished = true
      "Scissors beats paper!"
    elsif (left == :paper && right == :scissors)
      @finished = true
      "Scissors beats paper!"
    elsif (left == right)
      @finished = false
      "Tie game. Try again!"
    else
      :UNKNOWN
    end
  end

  def finish
    @finished
  end

end