require "spec_helper"

describe ArkClient::Client::Webhooks do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
  end

  describe ".list" do
    it "should be ok" do
      response = @client.list
      expect(response.code).to be 200
    end
  end

  describe ".create" do
    it "should be ok" do
      response = @client.create
      expect(response.code).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @client.show
      expect(response.code).to be 200
    end
  end

  describe ".update" do
    it "should be ok" do
      response = @client.update
      expect(response.code).to be 200
    end
  end

  describe ".delete" do
    it "should be ok" do
      response = @client.delete
      expect(response.code).to be 200
    end
  end
end
