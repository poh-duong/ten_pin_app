require "spec_helper"

describe TenPin do

  describe "#game_option" do

    context "when single player" do

      it "will return 1" do
        
        expect(TenPin.new.number_of_players = 1).to eq(1) 
      end

    end

    context "when multiplayer player (2)" do

      it "will return 2" do
        
        expect(TenPin.new.number_of_players = 2).to eq(2) 
      end

    end

    context "when greater than 2 players" do

      it "will raise error" do
        expect{ TenPin.new.number_of_players = 3 }.to raise_error(StandardError) 
      end

    end

    context "when less than 1 players" do

      it "will raise error" do
        expect{ TenPin.new.number_of_players = -1 }.to raise_error(StandardError) 
      end

    end

    context "when it's not an integer" do

      it "will raise error" do
        expect{ TenPin.new.number_of_players = "some_string" }.to raise_error(StandardError) 
      end

    end

  end

end
