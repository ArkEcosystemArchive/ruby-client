require "spec_helper"

describe ArkEcosystem::Client::API::One::Delegates do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/count"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/count")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/fee"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/fee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/forging/getForgedByAccount"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/forging/getForgedByAccount")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/forging/status"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/forging/status")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/get"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/get")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/getNextForgers"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/getNextForgers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/search"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/search")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/delegates/voters"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/voters")
      expect(resp.body).to eq({ success: true })
    end
  end
end
