require "spec_helper"

describe ArkEcosystem::Client::API::Two::Wallets do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.wallets.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".top" do
    it "should be ok" do
      resp = @connectionTwo.wallets.top
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/top")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.wallets.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".transactions" do
    it "should be ok" do
      resp = @connectionTwo.wallets.transactions("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".sent_transactions" do
    it "should be ok" do
      resp = @connectionTwo.wallets.sent_transactions("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions/sent")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".received_transaction" do
    it "should be ok" do
      resp = @connectionTwo.wallets.received_transaction("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/transactions/received")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".votes" do
    it "should be ok" do
      resp = @connectionTwo.wallets.votes("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/dummy/votes")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".search" do
    it "should be ok" do
      resp = @connectionTwo.wallets.search({ username: "dummy" })
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/wallets/search")
      expect(resp.body).to eq({ success: true })
    end
  end
end
