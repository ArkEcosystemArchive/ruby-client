require "spec_helper"

describe ArkEcosystem::Client::API::One::Loader do
  describe ".status" do
    it "should be ok" do
      resp = @connectionOne.loader.status
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/status")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".sync" do
    it "should be ok" do
      resp = @connectionOne.loader.sync
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/status/sync")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".autoconfigure" do
    it "should be ok" do
      resp = @connectionOne.loader.autoconfigure
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/loader/autoconfigure")
      expect(resp.body).to eq({ success: true })
    end
  end
end
