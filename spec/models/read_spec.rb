require 'rails_helper'

RSpec.describe Read, type: :model do
  it "returns the top 10 reads by count from past 24 hours" do
    create_many_reads
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

  it "returns the top urls by count from the past 24 hours" do
    create_many_reads
    expect(Read.top_urls).to eq( ["http://www.example.com/11",
                             "http://www.example.com/10",
                             "http://www.example.com/9",
                             "http://www.example.com/8",
                             "http://www.example.com/7",
                             "http://www.example.com/6",
                             "http://www.example.com/5",
                             "http://www.example.com/4",
                             "http://www.example.com/3",
                             "http://www.example.com/2"])
  end
end
