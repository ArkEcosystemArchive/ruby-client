require "spec_helper"

describe ArkEcosystem::Client::API::Two::Delegates do
  describe ".all" do
    it "should be ok" do
      resp = @connectionTwo.delegates.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionTwo.delegates.show("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".blocks" do
    it "should be ok" do
      resp = @connectionTwo.delegates.blocks("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy/blocks")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".voters" do
    it "should be ok" do
      resp = @connectionTwo.delegates.voters("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v2/delegates/dummy/voters")
      expect(resp.body).to eq({ success: true })
    end
  end
end
