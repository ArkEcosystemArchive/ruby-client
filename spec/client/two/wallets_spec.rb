require "spec_helper"

describe ArkEcosystem::Client::API::Two::Wallets do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 2
      }
    ).wallets
  end

  describe ".list" do
    it "should be ok" do
      response = @client.list
      expect(response.code).to be 200
    end
  end

  describe ".top" do
    it "should be ok" do
      response = @client.top
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

  describe ".sent_transactions" do
    it "should be ok" do
      response = @client.sent_transactions
      expect(response.code).to be 200
    end
  end

  describe ".received_transaction" do
    it "should be ok" do
      response = @client.received_transaction
      expect(response.code).to be 200
    end
  end

  describe ".votes" do
    it "should be ok" do
      response = @client.votes
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
