require "spec_helper"

describe ArkClient::Client::Block do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".block" do
    it "returns a block" do
      response = @client.block(17807043646345699568)
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/get?id=17807043646345699568')
    end
  end

  describe ".blocks" do
    it "returns a list of blocks" do
      response = @client.blocks
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks')
    end
  end

  describe ".block_epoch" do
    it "returns the block epoch" do
      response = @client.block_epoch
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getEpoch')
    end
  end

  describe ".block_height" do
    it "returns the block height" do
      response = @client.block_height
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getHeight')
    end
  end

  describe ".block_nethash" do
    it "returns the block nethash" do
      response = @client.block_nethash
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getNethash')
    end
  end

  describe ".block_fee" do
    it "returns the block fee" do
      response = @client.block_fee
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getFee')
    end
  end

  describe ".block_fees" do
    it "returns the block fees" do
      response = @client.block_fees
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getFees')
    end
  end

  describe ".block_milestone" do
    it "returns the block milestone" do
      response = @client.block_milestone
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getMilestone')
    end
  end

  describe ".block_reward" do
    it "returns the block reward" do
      response = @client.block_reward
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getReward')
    end
  end

  describe ".block_supply" do
    it "returns the block supply" do
      response = @client.block_supply
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getSupply')
    end
  end

  describe ".block_status" do
    it "returns the block status" do
      response = @client.block_status
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/blocks/getStatus')
    end
  end

end
