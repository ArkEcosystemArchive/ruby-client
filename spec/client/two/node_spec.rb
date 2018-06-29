require "spec_helper"

describe ArkEcosystem::Client::API::Two::Node do
  before(:each) do
    get_v2_connection
  end

  describe ".status" do
    it "should be ok" do
      response = @connection.node.status
      expect(response.url).to eq("#{@host}/node/status")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".syncing" do
    it "should be ok" do
      response = @connection.node.syncing
      expect(response.url).to eq("#{@host}/node/syncing")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".configuration" do
    it "should be ok" do
      response = @connection.node.configuration
      expect(response.url).to eq("#{@host}/node/configuration")
      expect(response.body["success"]).to be_truthy
    end
  end
end
