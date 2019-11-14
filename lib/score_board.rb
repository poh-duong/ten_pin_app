class ScoreBoard

  def score(frames)

    total = 0

    frames.each_with_index do |frame, round| 
     
      if round > 0 && last_round_strike?(frames[round-1])
        total += 10 + frame[0] + frame[1] 
      end
  
      if round > 0 && last_round_spare?(frames[round-1])
        total += 10 + frame[0]
       end

      if frame[0] != 10 || (frame[0] + frame[1] != 10)
        total += frame[0] + frame[1] 
      end
    
    end
    return total
  end

  def calculate_frame_score(round, frames)
    frame_score = 0
    if round > 0 
      frame_score = 10 + frames[round] if last_round_strike?(frames[round-1]) || last_round_spare?(frames[round-1])
    else
      frame_score = frames[round][0] + frames[round][1]
    end
  end

  def last_round_strike?(frame)
    return true if frame[0] == 10
    return false
  end

  def last_round_spare?(frame)
    return true if frame[0] + frame[1] == 10
    return false
  end
end
