require "spec_helper"

describe ArkEcosystem::Client::API::One::Transactions do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 1
      }
    ).transactions
  end

  describe ".list" do
    it "should be ok" do
      response = @client.list
      expect(response.code).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @client.show
      expect(response.code).to be 200
    end
  end

  describe ".list_unconfirmed" do
    it "should be ok" do
      response = @client.list_unconfirmed
      expect(response.code).to be 200
    end
  end

  describe ".show_unconfirmed" do
    it "should be ok" do
      response = @client.show_unconfirmed
      expect(response.code).to be 200
    end
  end
end
