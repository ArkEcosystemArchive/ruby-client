describe ArkClient::API::One::Blocks do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.blocks
  end

  describe ".list" do
    it "should be ok" do
      response = @resource.list
      expect(response.status).to be 200
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @resource.show 'blockId'
      expect(response.status).to be 200
    end
  end

  describe ".epoch" do
    it "should be ok" do
      response = @resource.epoch
      expect(response.status).to be 200
    end
  end

  describe ".height" do
    it "should be ok" do
      response = @resource.height
      expect(response.status).to be 200
    end
  end

  describe ".nethash" do
    it "should be ok" do
      response = @resource.nethash
      expect(response.status).to be 200
    end
  end

  describe ".fee" do
    it "should be ok" do
      response = @resource.fee
      expect(response.status).to be 200
    end
  end

  describe ".fees" do
    it "should be ok" do
      response = @resource.fees
      expect(response.status).to be 200
    end
  end

  describe ".milestone" do
    it "should be ok" do
      response = @resource.milestone
      expect(response.status).to be 200
    end
  end

  describe ".reward" do
    it "should be ok" do
      response = @resource.reward
      expect(response.status).to be 200
    end
  end

  describe ".supply" do
    it "should be ok" do
      response = @resource.supply
      expect(response.status).to be 200
    end
  end

  describe ".status" do
    it "should be ok" do
      response = @resource.status
      expect(response.status).to be 200
    end
  end
end
