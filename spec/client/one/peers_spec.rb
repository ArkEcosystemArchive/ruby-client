require "spec_helper"

describe ArkEcosystem::Client::API::One::Peers do
  describe ".all" do
    it "should be ok" do
      resp = @connectionOne.peers.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionOne.peers.show("ip", "port")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers/get?ip=ip&port=port")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".version" do
    it "should be ok" do
      resp = @connectionOne.peers.version
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/peers/version")
      expect(resp.body).to eq({ success: true })
    end
  end
end
