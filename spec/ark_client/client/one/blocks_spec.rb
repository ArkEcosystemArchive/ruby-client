require "spec_helper"

describe ArkClient::Client::One::Blocks do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
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

  describe ".epoch" do
    it "should be ok" do
      response = @client.epoch
      expect(response.code).to be 200
    end
  end

  describe ".height" do
    it "should be ok" do
      response = @client.height
      expect(response.code).to be 200
    end
  end

  describe ".nethash" do
    it "should be ok" do
      response = @client.nethash
      expect(response.code).to be 200
    end
  end

  describe ".fee" do
    it "should be ok" do
      response = @client.fee
      expect(response.code).to be 200
    end
  end

  describe ".fees" do
    it "should be ok" do
      response = @client.fees
      expect(response.code).to be 200
    end
  end

  describe ".milestone" do
    it "should be ok" do
      response = @client.milestone
      expect(response.code).to be 200
    end
  end

  describe ".reward" do
    it "should be ok" do
      response = @client.reward
      expect(response.code).to be 200
    end
  end

  describe ".supply" do
    it "should be ok" do
      response = @client.supply
      expect(response.code).to be 200
    end
  end

  describe ".status" do
    it "should be ok" do
      response = @client.status
      expect(response.code).to be 200
    end
  end
end
