require 'rails_helper'

RSpec.describe "Links index" do
  scenario "has a list of the top ten links" do
    create_many_reads
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
