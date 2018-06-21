describe ArkClient::API::One::Signatures do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.signatures
  end

  describe ".fee" do
    it "should be ok" do
      response = @resource.fee
      expect(response.status).to be 200
    end
  end
end
