describe ArkClient::API::One::Loader do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.loader
  end

  describe ".status" do
    it "should be ok" do
      response = @resource.status
      expect(response.status).to be 200
    end
  end

  describe ".sync" do
    it "should be ok" do
      response = @resource.sync
      expect(response.status).to be 200
    end
  end

  describe ".autoconfigure" do
    it "should be ok" do
      response = @resource.autoconfigure
      expect(response.status).to be 200
    end
  end
end
