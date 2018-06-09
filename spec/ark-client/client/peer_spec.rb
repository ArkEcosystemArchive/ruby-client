require "spec_helper"

describe ArkClient::Client::Peer do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".peer" do
    it "returns a peer" do
      response = @client.peer("91.134.115.30", 4001)
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/peers/get?ip=91.134.115.30&port=4001')
    end
  end

  describe ".peers" do
    it "returns a list of peers" do
      response = @client.peers
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/peers')
    end
  end

  describe ".version" do
    it "returns a peer version" do
      response = @client.version
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/peers/version')
    end
  end

end
