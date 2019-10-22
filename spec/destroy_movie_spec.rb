require 'rails_helper'

describe MoviesController, type: :controller do
    context 'when I want to delete a movie' do
        it 'should destroy the movie' do
            movie_1 = Movie.create(:title => "DuckDuckGo", :director => "Aman J")
            get :destroy, :id => movie_1
            expect(flash[:notice]).to eq("Movie \'DuckDuckGo\' deleted.")
            expect(response).to redirect_to("/movies")
        end
    end
end