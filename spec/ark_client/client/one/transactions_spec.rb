describe ArkClient::API::One::Transactions do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.transactions
  end

  describe ".list" do
    it "should be ok" do
      response = @resource.list
      expect(response.status).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @resource.show 'txId'
      expect(response.status).to be 200
    end
  end

  describe ".list_unconfirmed" do
    it "should be ok" do
      response = @resource.list_unconfirmed
      expect(response.status).to be 200
    end
  end

  describe ".show_unconfirmed" do
    it "should be ok" do
      response = @resource.show_unconfirmed 'txId'
      expect(response.status).to be 200
    end
  end
end
