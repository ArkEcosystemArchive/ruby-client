require "spec_helper"

describe ArkEcosystem::Client::API::Two::Blocks do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.blocks.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.blocks.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".transactions" do
    it "should be ok" do
      resp = @connectionTwo.blocks.transactions("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/dummy/transactions")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".search" do
    it "should be ok" do
      resp = @connectionTwo.blocks.search({ id: "dummy" })
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/blocks/search")
      expect(resp.body).to eq({ success: true })
    end
  end
end
