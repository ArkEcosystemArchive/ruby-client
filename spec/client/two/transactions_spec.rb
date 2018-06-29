require "spec_helper"

describe ArkEcosystem::Client::API::Two::Transactions do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.transactions.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".create" do
    it "should be ok" do
      resp = @connectionTwo.transactions.create({ id: "dummy" })
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.transactions.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".all_unconfirmed" do
    it "should be ok" do
      resp = @connectionTwo.transactions.all_unconfirmed
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/unconfirmed")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show_unconfirmed" do
    it "should be ok" do
      resp = @connectionTwo.transactions.show_unconfirmed("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/unconfirmed/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".search" do
    it "should be ok" do
      resp = @connectionTwo.transactions.search({ id: "dummy" })
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/search")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".types" do
    it "should be ok" do
      resp = @connectionTwo.transactions.types
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/transactions/types")
      expect(resp.body).to eq({ success: true })
    end
  end
end
