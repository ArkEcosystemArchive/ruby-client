require "spec_helper"

describe ArkEcosystem::Client::API::Two::Wallets do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/dummy/transactions"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/dummy/transactions/received"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions/received")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/dummy/transactions/sent"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions/sent")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/dummy/votes"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/votes")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/wallets/top"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/top")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.post "#{@host}/v2/wallets/search"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/search")
      expect(resp.body).to eq({ success: true })
    end
  end
end
