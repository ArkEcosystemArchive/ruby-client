require "spec_helper"

describe ArkEcosystem::Client::API::One::Delegates do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 1
      }
    ).delegates
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

  describe ".count" do
    it "should be ok" do
      response = @client.count
      expect(response.code).to be 200
    end
  end

  describe ".search" do
    it "should be ok" do
      response = @client.search
      expect(response.code).to be 200
    end
  end

  describe ".voters" do
    it "should be ok" do
      response = @client.voters
      expect(response.code).to be 200
    end
  end

  describe ".fee" do
    it "should be ok" do
      response = @client.fee
      expect(response.code).to be 200
    end
  end

  describe ".forged_by_account" do
    it "should be ok" do
      response = @client.forged_by_account
      expect(response.code).to be 200
    end
  end

  describe ".next_forgers" do
    it "should be ok" do
      response = @client.next_forgers
      expect(response.code).to be 200
    end
  end

  describe ".forging_status" do
    it "should be ok" do
      response = @client.forging_status
      expect(response.code).to be 200
    end
  end
end
