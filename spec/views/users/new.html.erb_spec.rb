require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :facebook_key => "MyString",
      :twitter_key => "MyString",
      :google_key => "MyString",
      :flickr_key => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_facebook_key[name=?]", "user[facebook_key]"
      assert_select "input#user_twitter_key[name=?]", "user[twitter_key]"
      assert_select "input#user_google_key[name=?]", "user[google_key]"
      assert_select "input#user_flickr_key[name=?]", "user[flickr_key]"
    end
  end
end
