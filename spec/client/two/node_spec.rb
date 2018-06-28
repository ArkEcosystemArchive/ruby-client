require "spec_helper"

describe ArkEcosystem::Client::API::Two::Node do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 2
      }
    ).node
  end

  describe ".status" do
    it "should be ok" do
      response = @client.status
      expect(response.code).to be 200
    end
  end

  describe ".syncing" do
    it "should be ok" do
      response = @client.syncing
      expect(response.code).to be 200
    end
  end

  describe ".configuration" do
    it "should be ok" do
      response = @client.configuration
      expect(response.code).to be 200
    end
  end
end
