require 'rails_helper'

describe Movie, '.movies_with_same_director' do
    it 'finds movies with the same director' do
        movie_1 = Movie.create(:title => "Aliens Vs Cowboys", :director => "Aman J")
        movie_2 = Movie.create(:title => "Inception", :director => "Aman J")
        
        result = movie_1.movies_with_same_director

        expect(result).to include("Inception")
    end
    
    it 'does not find movies with different directors' do
        movie_1 = Movie.create(:title => "Limitless", :director => "Aman J")
        movie_2 = Movie.create(:title => "Interstellar", :director => "Amani J")
        
        result = movie_1.movies_with_same_director
        
        expect(result).not_to include("Interstellar")
    end
end