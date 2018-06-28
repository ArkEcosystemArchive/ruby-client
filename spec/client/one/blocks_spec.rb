require "spec_helper"

describe ArkEcosystem::Client::API::One::Blocks do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/get"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/get")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getEpoch"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getEpoch")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getFee"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getFee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getFees"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getFees")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getHeight"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getHeight")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getMilestone"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getMilestone")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getNethash"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getNethash")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getReward"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getReward")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getStatus"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getStatus")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/blocks/getSupply"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/blocks/getSupply")
      expect(resp.body).to eq({ success: true })
    end
  end
end
