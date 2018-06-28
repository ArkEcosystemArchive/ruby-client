require "spec_helper"

describe ArkEcosystem::Client::API::Two::Votes do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/votes"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/votes")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/votes/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/votes/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
