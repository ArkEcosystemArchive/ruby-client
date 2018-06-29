require "spec_helper"

describe ArkEcosystem::Client::API::One::Peers do
  before(:each) do
    get_v1_connection
  end

  describe ".all" do
    it "should be ok" do
      response = @connection.peers.all
      expect(response.url).to eq("#{@host}/peers")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".show" do
    it "should be ok" do
      response = @connection.peers.show("ip", "port")
      expect(response.url).to eq("#{@host}/peers/get?ip=ip&port=port")
      expect(response.body["success"]).to be_truthy
    end
  end

  describe ".version" do
    it "should be ok" do
      response = @connection.peers.version
      expect(response.url).to eq("#{@host}/peers/version")
      expect(response.body["success"]).to be_truthy
    end
  end
end
