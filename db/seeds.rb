puts "Cleaning bookmarks..."
Bookmark.destroy_all
puts "Cleaning movies..."
Movie.destroy_all
puts "Cleaning lists..."
List.destroy_all
puts "Creating movies..."
movie1 = Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
movie2 = Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
movie3 = Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
movie4 = Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "Added 4 movies"
puts "Creating lists..."
list1 = List.create!(name: "My Favorites")
list2 = List.create!(name: "Watch Later")
list3 = List.create!(name: "Top 2025 Picks")
list4 = List.create!(name: "Classic Must-Watch")
list5 = List.create!(name: "Family Movie Night")
puts "Added 5 watchlists"
puts "Creating bookmarks..."
Bookmark.create!(comment: "An epic superhero adventure", movie: movie1, list: list1)
Bookmark.create!(comment: "One of the best movies ever", movie: movie2, list: list1)
Bookmark.create!(comment: "A tragic love story", movie: movie3, list: list2)
Bookmark.create!(comment: "A tragic love story", movie: movie3, list: list1)
Bookmark.create!(comment: "Fun and thrilling", movie: movie4, list: list3)
Bookmark.create!(comment: "Rewatch every year", movie: movie3, list: list4)
Bookmark.create!(comment: "Perfect for family night", movie: movie1, list: list5)
puts "Added bookmarks"
puts "Seeding done!"
