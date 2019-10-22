require 'rails_helper'

describe MoviesController, type: :controller do
    describe "#newmovie" do
        context "When I create a movie" do
            it "should create it to database" do
                new_movie = Hash.new
                new_movie["title"] = "DuckDuckGoose"
                new_movie["rating"] = "R"
                new_movie["release_date"] = Date.new(2019, 10, 10)
                new_movie["director"] = "Aman J"
                post :create, movie: new_movie
                expect(response).to redirect_to("/movies")
            end
        end
    end
end