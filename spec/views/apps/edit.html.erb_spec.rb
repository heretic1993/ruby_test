require 'rails_helper'

RSpec.describe "apps/edit", :type => :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :name => "MyString",
      :favor => ""
    ))
  end

  it "renders the edit app form" do
    render

    assert_select "form[action=?][method=?]", app_path(@app), "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_favor[name=?]", "app[favor]"
    end
  end
end
