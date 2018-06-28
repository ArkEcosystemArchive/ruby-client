require "spec_helper"

describe ArkEcosystem::Client::API::Two::Blocks do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/blocks"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/blocks/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/blocks/dummy/transactions"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/dummy/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.post "#{@host}/v2/blocks/search"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/search")
      expect(resp.body).to eq({ success: true })
    end
  end
end
