require "spec_helper"

describe ArkEcosystem::Client::API::One::Transactions do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/transactions"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/transactions/get"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/get")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/transactions/unconfirmed"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/unconfirmed")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/transactions/unconfirmed/get"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/transactions/unconfirmed/get")
      expect(resp.body).to eq({ success: true })
    end
  end
end
