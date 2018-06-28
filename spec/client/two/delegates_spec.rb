require "spec_helper"

describe ArkEcosystem::Client::API::Two::Delegates do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/delegates"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/delegates/dummy"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/delegates/dummy/blocks"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v2/delegates/dummy/voters"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy/voters")
      expect(resp.body).to eq({ success: true })
    end
  end
end
