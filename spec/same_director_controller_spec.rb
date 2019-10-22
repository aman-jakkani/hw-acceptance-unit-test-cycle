require 'rails_helper'

describe MoviesController, type: :controller do
    context 'when movie has director' do
        it 'renders same director page' do
            movie_1 = Movie.create(:title => "DuckDuckGo", :director => "Aman J")
            movie_2 = Movie.create(:title => "DuckDuckGoose", :director => "Aman J")
            
            get :samedirector, :id => movie_1
            
            expect(response).to render_template("samedirector")
        end
    end
    
    context 'when movie has no director' do
        it 'renders index page' do
            movie_1 = Movie.create(:title => "DuckDuckGo")
            expect(movie_1.new_record?).to eq(false)
            get :samedirector, :id => movie_1
            
            expect(response).to redirect_to('/movies')
            expect(flash[:notice]).to eq("\'DuckDuckGo\' has no director info")
        end
        
    end
end