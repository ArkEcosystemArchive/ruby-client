require "spec_helper"

describe ArkClient::Client::Signature do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".signature_fee" do
    it "returns the signature fee" do
      response = @client.signature_fee
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/signatures/fee')
    end
  end

  describe ".create_signature" do
    it "returns a new signature" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.create_signature
      expect(response['success']).to be true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

end
