require "spec_helper"

describe ArkEcosystem::Client::API::One::Delegates do
  describe ".all" do
    it "should be ok" do
      resp = @connectionOne.delegates.all
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".show" do
    it "should be ok" do
      resp = @connectionOne.delegates.show({ username:("dummy") })
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/get?username=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".count" do
    it "should be ok" do
      resp = @connectionOne.delegates.count
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/count")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".search" do
    it "should be ok" do
      resp = @connectionOne.delegates.search("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/search?q=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".voters" do
    it "should be ok" do
      resp = @connectionOne.delegates.voters("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/voters?publicKey=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".fee" do
    it "should be ok" do
      resp = @connectionOne.delegates.fee
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/fee")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".forged_by_account" do
    it "should be ok" do
      resp = @connectionOne.delegates.forged_by_account("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/forging/getForgedByAccount?generatorPublicKey=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".next_forgers" do
    it "should be ok" do
      resp = @connectionOne.delegates.next_forgers
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/getNextForgers")
      expect(resp.body).to eq({ success: true })
    end
  end

  describe ".forging_status" do
    it "should be ok" do
      resp = @connectionOne.delegates.forging_status("dummy")
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/delegates/forging/status?publicKey=dummy")
      expect(resp.body).to eq({ success: true })
    end
  end
end
