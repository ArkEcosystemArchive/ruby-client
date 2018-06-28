require "spec_helper"

describe ArkEcosystem::Client::API::One::Signatures do
  describe ".balance" do
    it "should be ok" do
      resp = @client.get "#{@host}/v1/signatures/fee"
      expect(resp.to_hash[:url].to_s).to eq("#{@host}/v1/signatures/fee")
      expect(resp.body).to eq({ success: true })
    end
  end
end
