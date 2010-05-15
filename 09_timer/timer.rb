# timer.rb
module TimeRemaining
  def over_60
    @seconds/60 > 60? 60 : 0
  end
end
class Timer
  include TimeRemaining
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(k)
    @seconds = k
  end
  def time_string
    @seconds = @seconds
    format_this = [sprintf("%02d", @seconds/3600),sprintf("%02d", (@seconds/60) - (over_60)),sprintf("%02d", @seconds%60)]
    format_this.join("|").to_s
  end
end