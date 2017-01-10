require 'rails_helper'

describe "#get to api/v1/reads", type: :request do
  it "returns success status and the top 10 reads as json" do
    create_many_reads
    get "/api/v1/reads"

    expect(response).to be_success
    reads = JSON.parse(response.body)

    expect(reads).to be_instance_of(Array)
    expect(reads.length).to eq(10)
    expect(reads.first).to eq("http://www.example.com/11")
    expect(reads.last).to eq("http://www.example.com/2")
  end
end
