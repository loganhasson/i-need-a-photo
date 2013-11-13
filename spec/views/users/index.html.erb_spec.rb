require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :facebook_key => "Facebook Key",
        :twitter_key => "Twitter Key",
        :google_key => "Google Key",
        :flickr_key => "Flickr Key"
      ),
      stub_model(User,
        :name => "Name",
        :email => "Email",
        :facebook_key => "Facebook Key",
        :twitter_key => "Twitter Key",
        :google_key => "Google Key",
        :flickr_key => "Flickr Key"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Key".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Key".to_s, :count => 2
    assert_select "tr>td", :text => "Google Key".to_s, :count => 2
    assert_select "tr>td", :text => "Flickr Key".to_s, :count => 2
  end
end
