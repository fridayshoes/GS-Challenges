require 'music_listening_list'

RSpec.describe MusicListingList.new do 
  context "add_tracks accepts a string as a track" do 
    it "Adds the track to the array" do 
      track = MusicListingList.new  
      track.add_tracks("Beat it") 
      result = track.display_tracks 
      expect(result).to eq ["Beat it"] 
    end 
   
    it "Adds multiple tracks to the array" do 
      track = MusicListingList.new  
      track.add_tracks("Beat it") 
      track.add_tracks("We will rock you") 
      result = track.display_tracks 
      expect(result).to eq ["Beat it", "We will rock you"] 
    end 
  end 
  context "check_tracks accepts a string as a track" do 
    it "It will fail if the track is not in the list" do 
      track = MusicListingList.new 
      track.add_tracks("Beat it") 
      track.add_tracks("You are the one") 
      expect { track.check_track("Purple Rain") }.to raise_error "You haven't listened to that" 
    end 
  end 
end