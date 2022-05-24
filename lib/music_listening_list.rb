class MusicListingList 
  def initialize 
    @list_of_tracks = [] 
  end 
   
  def add_tracks(track) 
    @list_of_tracks << track 
  end 
   
  def check_track(track) 
    fail "You haven't listened to that" unless @list_of_tracks.include? track 
  end 
   
  def display_tracks 
    return @list_of_tracks 
  end 
   
end