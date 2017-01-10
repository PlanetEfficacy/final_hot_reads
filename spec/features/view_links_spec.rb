require 'rails_helper'

RSpec.describe "Links index" do
  scenario "has a list of the top ten links" do
    create_list :read, 11, url: "http://www.example.com/11"
    create_list :read, 10, url: "http://www.example.com/10"
    create_list :read, 9, url: "http://www.example.com/9"
    create_list :read, 8, url: "http://www.example.com/8"
    create_list :read, 7, url: "http://www.example.com/7"
    create_list :read, 6, url: "http://www.example.com/6"
    create_list :read, 5, url: "http://www.example.com/5"
    create_list :read, 4, url: "http://www.example.com/4"
    create_list :read, 3, url: "http://www.example.com/3"
    create_list :read, 2, url: "http://www.example.com/2"

    create_list :read, 10

    visit root_path

    expect(page).to have_content("http://www.example.com/11")
    expect(page).to have_content("http://www.example.com/10")
    expect(page).to have_content("http://www.example.com/9")
    expect(page).to have_content("http://www.example.com/8")
    expect(page).to have_content("http://www.example.com/7")
    expect(page).to have_content("http://www.example.com/6")
    expect(page).to have_content("http://www.example.com/5")
    expect(page).to have_content("http://www.example.com/4")
    expect(page).to have_content("http://www.example.com/3")
    expect(page).to have_content("http://www.example.com/2")
  end
end
