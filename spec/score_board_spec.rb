require "spec_helper"

describe ScoreBoard do

  let(:frames) {  [
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
    [1,1],
  ]}

  describe "#score" do

    context "when single player" do

      it "will return 1" do
        
        expect(ScoreBoard.new.score(frames)).to eq(20) 
      end

    end

  end

end
