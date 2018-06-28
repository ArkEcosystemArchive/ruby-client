require "spec_helper"

describe ArkEcosystem::Client::API::One::Signatures do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 1
      }
    ).signatures
  end

  describe ".fee" do
    it "should be ok" do
      response = @client.fee
      expect(response.code).to be 200
    end
  end
end
