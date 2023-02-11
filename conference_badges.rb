# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array
    array.collect {|name| badge_maker(name)}
end

def assign_rooms(speakers)
  speakers.collect.with_index(1) do |speaker, room|
    "Hello, #{speaker}! You'll be assigned to room #{room}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each do |badge|
    puts badge
  end

  assign_rooms(speakers).each do |assignment|
    puts assignment
  end
end