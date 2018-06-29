require "spec_helper"

describe ArkEcosystem::Client::API::Two::Votes do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.votes.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/votes")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.votes.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/votes/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
