# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator arr
    arr.map{|name| badge_maker(name)}
end

def assign_rooms arr
    arr.map.with_index{|speaker,index| "Hello, #{speaker}! You'll be assigned to room #{index+1}!"}
end

def printer arr
    batch_badge_creator(arr).each{|user| puts user}
    assign_rooms(arr).each{|room| puts room}
end

puts printer ["brian", "osora"]