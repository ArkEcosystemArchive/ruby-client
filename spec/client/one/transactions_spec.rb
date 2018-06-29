require "spec_helper"

describe ArkEcosystem::Client::API::One::Transactions do
  describe ".all" do
    it "should be ok" do
      resp = @connectionOne.transactions.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionOne.transactions.show "dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/get?id=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".all_unconfirmed" do
    it "should be ok" do
      resp = @connectionOne.transactions.all_unconfirmed
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/unconfirmed")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show_unconfirmed" do
    it "should be ok" do
      resp = @connectionOne.transactions.show_unconfirmed "dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/unconfirmed/get?id=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
