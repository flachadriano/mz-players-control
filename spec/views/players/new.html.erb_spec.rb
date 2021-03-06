require 'rails_helper'

RSpec.describe "players/new", :type => :view do
  before(:each) do
    assign(:player, Player.new(
      :number => 1,
      :name => "MyString"
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input#player_number[name=?]", "player[number]"

      assert_select "input#player_name[name=?]", "player[name]"
    end
  end
end
