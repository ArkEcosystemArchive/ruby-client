require "spec_helper"

describe ArkEcosystem::Client::API::Two::Node do
  describe ".status" do
    it "should be ok" do
      resp = @connectionTwo.node.status
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/status")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".syncing" do
    it "should be ok" do
      resp = @connectionTwo.node.syncing
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/syncing")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".configuration" do
    it "should be ok" do
      resp = @connectionTwo.node.configuration
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/configuration")
      expect(resp.body).to eq({ success: true })
    end
  end
end
