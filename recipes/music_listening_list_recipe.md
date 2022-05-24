# MUSIC LISTENING LIST Class Design Recipe 
## 1. Describe the Problem 

As a user 
So that I can keep track of my music listening 
I want to add tracks I've listened to and see a list of them. 

## 2. Design the Class Interface 
_Include the initializer and public methods with all parameters and return values._ 
```ruby 
class MusicListingList 
def initialize 
@list_of_tracks = [] 
# We need an empty array to hold our tracks. 
end 
def add_tracks(track) 
@list_of_tracks << track 
# We have a parameter to take a string and push into the array. 
end 
def check_track(track) 
fail "You haven't listened to that" unless @list_of_tracks.include? track 
def display_tracks 
return @list_of_tracks 
# We want to display the array elements. 
end 
   
``` 
## 3. Create Examples as Tests 
```ruby 
# 1 
track = MusicListingList.new 
track.add_tracks("Beat it") 
track.display_tracks 
Output => ["Beat it"]  
#2 
track = MusicListingList.new 
track.add_tracks("Beat it") 
tracks.add_tracks("We will rock you") 
tracks.display_tracks 
Output => ["Beat it, We will rock you"] 
#3  
track = MusicListingList.new 
track.add_tracks("Beat it") 
track.add_tracks("You are the one") 
tracks.check_track("Purple Rain") 
Output => Fail "You haven't listened to that!" 
``` 
_Encode each example as a test. You can add to the above list as you go._ 
## 4. Implement the Behaviour 
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._