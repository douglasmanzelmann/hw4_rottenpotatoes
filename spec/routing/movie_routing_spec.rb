describe MoviesController do
  it "should recognize a specific Movies#similar route" do
    assert_routing(similar_movies_path(:director => "Spielberg"),
      {:controller => "movies", :action => "similar", :director => 'Spielberg'})
  end
end
