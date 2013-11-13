require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :facebook_key => "Facebook Key",
      :twitter_key => "Twitter Key",
      :google_key => "Google Key",
      :flickr_key => "Flickr Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Facebook Key/)
    rendered.should match(/Twitter Key/)
    rendered.should match(/Google Key/)
    rendered.should match(/Flickr Key/)
  end
end
