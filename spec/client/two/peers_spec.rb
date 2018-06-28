require "spec_helper"

describe ArkEcosystem::Client::API::Two::Peers do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/peers"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/peers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/peers/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/peers/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
