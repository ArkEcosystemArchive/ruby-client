require "spec_helper"

describe ArkEcosystem::Client::API::One::Accounts do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/accounts"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/accounts/delegates"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/delegates")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/accounts/delegates/fee"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/delegates/fee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/accounts/getBalance"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/getBalance")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/accounts/getPublickey"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/getPublickey")
      expect(resp.body).to eq({ success: true })
    end
  end
end
