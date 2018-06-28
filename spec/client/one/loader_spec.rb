require "spec_helper"

describe ArkEcosystem::Client::API::One::Loader do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/loader/autoconfigure"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/autoconfigure")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/loader/status"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/status")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/loader/status/sync"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/status/sync")
      expect(resp.body).to eq({ success: true })
    end
  end
end
