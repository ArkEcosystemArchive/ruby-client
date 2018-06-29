require "spec_helper"

describe ArkEcosystem::Client::API::Two::Delegates do
  before(:each) do
    get_v2_connection
  end

  describe ".all" do
    it "should be ok" do
      response = @connection.delegates.all
      expect(response.url).to eq("#{@host}/delegates")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @connection.delegates.show("dummy")
      expect(response.url).to eq("#{@host}/delegates/dummy")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".blocks" do
    it "should be ok" do
      response = @connection.delegates.blocks("dummy")
      expect(response.url).to eq("#{@host}/delegates/dummy/blocks")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".voters" do
    it "should be ok" do
      response = @connection.delegates.voters("dummy")
      expect(response.url).to eq("#{@host}/delegates/dummy/voters")
      expect(response.body["success"]).to be_truthy
    end
  end
end
