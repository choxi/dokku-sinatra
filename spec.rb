require "rspec"
require "rack/test"
require "./log_formatter"
require "./app"

describe "App" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get "/"
    expect(last_response.body).to eq("hello")
  end
end
