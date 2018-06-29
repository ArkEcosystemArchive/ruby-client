require "spec_helper"

describe ArkEcosystem::Client::API::One::Blocks do
  before(:each) do
    get_v1_connection
  end

  describe ".all" do
    it "should be ok" do
      response = @connection.blocks.all
      expect(response.url).to eq("#{@host}/blocks")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @connection.blocks.show "dummy"
      expect(response.url).to eq("#{@host}/blocks/get?id=dummy")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".epoch" do
    it "should be ok" do
      response = @connection.blocks.epoch
      expect(response.url).to eq("#{@host}/blocks/getEpoch")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".height" do
    it "should be ok" do
      response = @connection.blocks.height
      expect(response.url).to eq("#{@host}/blocks/getHeight")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".nethash" do
    it "should be ok" do
      response = @connection.blocks.nethash
      expect(response.url).to eq("#{@host}/blocks/getNethash")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".fee" do
    it "should be ok" do
      response = @connection.blocks.fee
      expect(response.url).to eq("#{@host}/blocks/getFee")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".fees" do
    it "should be ok" do
      response = @connection.blocks.fees
      expect(response.url).to eq("#{@host}/blocks/getFees")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".milestone" do
    it "should be ok" do
      response = @connection.blocks.milestone
      expect(response.url).to eq("#{@host}/blocks/getMilestone")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".reward" do
    it "should be ok" do
      response = @connection.blocks.reward
      expect(response.url).to eq("#{@host}/blocks/getReward")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".supply" do
    it "should be ok" do
      response = @connection.blocks.supply
      expect(response.url).to eq("#{@host}/blocks/getSupply")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".status" do
    it "should be ok" do
      response = @connection.blocks.status
      expect(response.url).to eq("#{@host}/blocks/getStatus")
      expect(response.body["success"]).to be_truthy
    end
  end
end
