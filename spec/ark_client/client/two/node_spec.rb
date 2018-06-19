require "spec_helper"

describe ArkClient::Client::Two::Node do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
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
