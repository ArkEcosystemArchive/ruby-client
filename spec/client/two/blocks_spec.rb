require "spec_helper"

describe ArkEcosystem::Client::API::Two::Blocks do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 2
      }
    ).blocks
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

  describe ".transactions" do
    it "should be ok" do
      response = @client.transactions
      expect(response.code).to be 200
    end
  end

  describe ".search" do
    it "should be ok" do
      response = @client.search
      expect(response.code).to be 200
    end
  end
end
