require "spec_helper"

describe ArkEcosystem::Client::API::One::Signatures do
  describe ".fee" do
    it "should be ok" do
      resp = @connectionOne.signatures.fee
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/signatures/fee")
      expect(resp.body).to eq({ success: true })
    end
  end
end
