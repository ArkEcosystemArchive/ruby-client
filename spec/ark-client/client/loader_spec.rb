require "spec_helper"

describe ArkClient::Client::Loader do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".status" do
    it "returns the loader status" do
      response = @client.status
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/loader/status')
    end
  end

  describe ".sync" do
    it "syncs the loader" do
      response = @client.sync
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/loader/status/sync')
    end
  end

  describe ".autoconfigure" do
    it "autoconfigures the loader" do
      response = @client.autoconfigure
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/loader/autoconfigure')
    end
  end

end
