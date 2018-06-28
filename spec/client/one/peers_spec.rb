require "spec_helper"

describe ArkEcosystem::Client::API::One::Peers do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/peers"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/peers/get"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers/get")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/peers/version"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers/version")
      expect(resp.body).to eq({ success: true })
    end
  end
end
