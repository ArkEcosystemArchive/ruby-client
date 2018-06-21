describe ArkClient::API::One::Delegates do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.delegates
  end

  describe ".list" do
    it "should be ok" do
      response = @resource.list
      expect(response.status).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @resource.show
      expect(response.status).to be 200
    end
  end

  describe ".count" do
    it "should be ok" do
      response = @resource.count
      expect(response.status).to be 200
    end
  end

  describe ".search" do
    it "should be ok" do
      response = @resource.search('query')
      expect(response.status).to be 200
    end
  end

  describe ".voters" do
    it "should be ok" do
      response = @resource.voters 'public key'
      expect(response.status).to be 200
    end
  end

  describe ".fee" do
    it "should be ok" do
      response = @resource.fee
      expect(response.status).to be 200
    end
  end

  describe ".forged_by_account" do
    it "should be ok" do
      response = @resource.forged_by_account 'public key'
      expect(response.status).to be 200
    end
  end

  describe ".next_forgers" do
    it "should be ok" do
      response = @resource.next_forgers
      expect(response.status).to be 200
    end
  end

  describe ".forging_status" do
    it "should be ok" do
      response = @resource.forging_status 'public key'
      expect(response.status).to be 200
    end
  end
end
