require "spec_helper"

describe ArkEcosystem::Client::API::Two::Peers do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.peers.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/peers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.peers.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/peers/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
