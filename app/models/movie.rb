class Movie < ActiveRecord::Base
    # Read

    def self.first_movie #returns the first item in the movies table
        Movie.first
    end 

    def self.last_movie #returns the last item in the movies table
        Movie.last
    end

    def self.find_movie_with_id(id) #returns the movie with the corresponding id
        Movie.find(id)
    end

    def self.movie_count #returns the number of items in the movies table
        Movie.count
    end

    def self.find_movie_with_attributes(attributes) #returns the movie with the corresponding attributes
        Movie.find_by(attributes)
    end 

    # def self.find_movies_after_2002 #returns a list of movies released after 2002
    #     Movie.all.select do |movie|
    #         movie.release_date > 2002
    #     end 
    # end 

    #alternate method using .where
    def self.find_movies_after_2002 #returns a list of movies released after 2002
        Movie.where("release_date > 2002")
    end 

   # Create 

   def self.create_with_title(title) #saves the title to the movie
        Movie.create(title: title)
   end

   # Update

   def update_with_attributes(attributes) #updates one movie
        self.update(attributes)
   end 

   def self.update_all_titles(title) #updates the title of all the movies
        Movie.update(title: title)
   end

   # Delete

   def self.delete_by_id(id) #deletes the record with the corresponding id
        Movie.destroy(id)
   end

   def self.delete_all_movies #deletes all the movies from the movies table
        Movie.destroy_all
   end



end