require "spec_helper"

describe ArkEcosystem::Client::API::Two::Transactions do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/transactions"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.post "#{@host}/v2/transactions"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/transactions/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/transactions/types"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/types")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/transactions/unconfirmed"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/unconfirmed")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/transactions/unconfirmed/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/unconfirmed/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.post "#{@host}/v2/transactions/search"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/search")
      expect(resp.body).to eq({ success: true })
    end
  end
end
