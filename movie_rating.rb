movies = {
  hangover: 8,
  titanic: 9,
  inception: 10
}

puts "what's your choice?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
when 'add'
  puts 'Enter the name of the movie'
  title = gets.chomp.to_sym
  if movies.key?(title)
    puts 'Movie already exist in the library'
  else
    puts 'Enter the rate of the movie'
    rating = gets.chomp.to_i
    movies[title] = rating
    puts 'the movie was added!'
  end
when 'update'
  puts 'Enter the name of the movie to update'
  title = gets.chomp.to_sym
  if movies[title].nil?
    p 'The movie is not in the list'
  else
    puts 'Enter new rate'
    rating = gets.chomp.to_i
    movies[title] = rating
    'The movie was updated'
  end
when 'display'
  movies.each do |movie, rate|
    puts "#{movie}: #{rate}"
  end
when 'delete'
  puts 'Enter the name of the movie you want to delete'
  title = gets.chomp.to_sym
  if movies.key?(title)
    movies.delete(title)
  else
    puts "'#{title}' is not in the list of movies"
  end
else
  puts "#{choice} is not an option"
end
