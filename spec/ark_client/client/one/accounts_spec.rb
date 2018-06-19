require "spec_helper"

describe ArkClient::Client::One::Accounts do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
  end

  describe ".balance" do
    it "should be ok" do
      response = @client.balance
      expect(response.code).to be 200
    end
  end

  describe ".public_key" do
    it "should be ok" do
      response = @client.public_key
      expect(response.code).to be 200
    end
  end

  describe ".delegate" do
    it "should be ok" do
      response = @client.delegate
      expect(response.code).to be 200
    end
  end

  describe ".delegates_fee" do
    it "should be ok" do
      response = @client.delegates_fee
      expect(response.code).to be 200
    end
  end

  describe ".account" do
    it "should be ok" do
      response = @client.account
      expect(response.code).to be 200
    end
  end
end
