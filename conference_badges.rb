def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees) # takes an array of names as an argument and returns an array of badge messages
    array=[]
    attendees.each {|name| array << badge_maker(name)}
    return array
end

def assign_rooms(attendees) # takes the list of speakers and assigns each speaker to a room
    array=[]
    attendees.each_with_index {|name, index|
        array << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    }
    return array
end

def printer(attendees) # output first the results of the batch_badge_creator method and then of the assign_rooms method 
    batch_badge_creator(attendees).each { |name| puts name }
    assign_rooms(attendees).each { |room| puts room }
end