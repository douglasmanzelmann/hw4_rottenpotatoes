require "spec_helper"
describe MoviesController do

  describe "Finds Similar Movies" do
    describe "George Lucas" do
      
      it "is successful" do
        param_director = 'George Lucas'
        fake_results = [mock('Movie'), mock('Movie')]
        Movie.should_receive(:find_similar).with(param_director).and_return(fake_results)
        get :similar, :director => param_director
        assigns(:director).should == param_director
        assigns(:movies).should == fake_results
      end
      
    end
  end
end
