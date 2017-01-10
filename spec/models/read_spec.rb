require 'rails_helper'

RSpec.describe Read, type: :model do
  it "returns the top 10 reads by count from past 24 hours" do
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
  expect(Read.top).to eq( [["http://www.example.com/11", 11],
                           ["http://www.example.com/10", 10],
                           ["http://www.example.com/9", 9],
                           ["http://www.example.com/8", 8],
                           ["http://www.example.com/7", 7],
                           ["http://www.example.com/6", 6],
                           ["http://www.example.com/5", 5],
                           ["http://www.example.com/4", 4],
                           ["http://www.example.com/3", 3],
                           ["http://www.example.com/2", 2]])

  end
end
