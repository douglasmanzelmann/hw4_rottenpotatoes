require "spec_helper"

describe MoviesController do

  describe "Finds Similar Movies" do
    
    it "Similar from George Lucas" do
      Movie.should_receive(:find_all_by_director).with('George Lucas').and_return('some movies')
      movies = Movie.find_similar('George Lucas')
      movies.should == 'some movies'
    end
  
    it "Similar from nil" do
      movies = Movie.find_similar(nil)
      movies.should == nil
    end
    
  end
  
end
