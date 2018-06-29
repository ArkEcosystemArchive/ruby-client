require "spec_helper"

describe ArkEcosystem::Client::API::One::Accounts do
  describe ".balance" do
    it "should be ok" do
      resp = @connectionOne.accounts.balance("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/getBalance?address=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".public_key" do
    it "should be ok" do
      resp = @connectionOne.accounts.public_key("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/getPublickey?address=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".delegate" do
    it "should be ok" do
      resp = @connectionOne.accounts.delegate("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/delegates?address=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".delegates_fee" do
    it "should be ok" do
      resp = @connectionOne.accounts.delegates_fee
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts/delegates/fee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".account" do
    it "should be ok" do
      resp = @connectionOne.accounts.account("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/accounts?address=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
