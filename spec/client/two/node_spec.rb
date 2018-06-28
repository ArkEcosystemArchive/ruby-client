require "spec_helper"

describe ArkEcosystem::Client::API::Two::Node do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/node/configuration"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/configuration")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/node/status"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/status")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/node/syncing"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/node/syncing")
      expect(resp.body).to eq({ success: true })
    end
  end
end
