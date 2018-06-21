describe ArkClient::API::One::Accounts do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.accounts
  end

  describe ".balance" do
    it "should be ok" do
      response = @resource.balance 'address'
      expect(response.status).to be 200
    end
  end

  describe ".public_key" do
    it "should be ok" do
      response = @resource.public_key 'address'
      expect(response.status).to be 200
    end
  end

  describe ".delegate" do
    it "should be ok" do
      response = @resource.delegate 'address'
      expect(response.status).to be 200
    end
  end

  describe ".delegates_fee" do
    it "should be ok" do
      response = @resource.delegates_fee 'address'
      expect(response.status).to be 200
    end
  end

  describe ".account" do
    it "should be ok" do
      response = @resource.account 'address'
      expect(response.status).to be 200
    end
  end
end
