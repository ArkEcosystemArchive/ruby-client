require "spec_helper"

describe ArkEcosystem::Client::API::One::Blocks do
  describe ".all" do
    it "should be ok" do
      resp = @connectionOne.blocks.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionOne.blocks.show "dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/get?id=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".epoch" do
    it "should be ok" do
      resp = @connectionOne.blocks.epoch
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getEpoch")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".height" do
    it "should be ok" do
      resp = @connectionOne.blocks.height
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getHeight")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".nethash" do
    it "should be ok" do
      resp = @connectionOne.blocks.nethash
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getNethash")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".fee" do
    it "should be ok" do
      resp = @connectionOne.blocks.fee
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getFee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".fees" do
    it "should be ok" do
      resp = @connectionOne.blocks.fees
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getFees")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".milestone" do
    it "should be ok" do
      resp = @connectionOne.blocks.milestone
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getMilestone")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".reward" do
    it "should be ok" do
      resp = @connectionOne.blocks.reward
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getReward")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".supply" do
    it "should be ok" do
      resp = @connectionOne.blocks.supply
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getSupply")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".status" do
    it "should be ok" do
      resp = @connectionOne.blocks.status
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getStatus")
      expect(resp.body).to eq({ success: true })
    end
  end
end
