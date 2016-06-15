require File.join(File.expand_path(File.dirname(__FILE__)), "app")

require "rspec"
require "rack/test"

describe App do
  include Rack::Test::Methods

  def app
    App.new
  end

  it "says hello" do
    get "/"
    expect(last_response.body).to eq("hello")
  end
end
