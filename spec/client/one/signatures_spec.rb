require "spec_helper"

describe ArkEcosystem::Client::API::One::Signatures do
  before(:each) do
    get_v1_connection
  end

  describe ".fee" do
    it "should be ok" do
      response = @connection.signatures.fee
      expect(response.url).to eq("#{@host}/signatures/fee")
      expect(response.body["success"]).to be_truthy
    end
  end
end
