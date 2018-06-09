require "spec_helper"

describe ArkClient::Client::MultiSignature do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".pending_multi_signatures" do
    it "returns a list of pending multi signatures" do
      pending("Requires a public key! Will only be tested on local machines.")
      response = @client.pending_multi_signatures
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/multisignatures/pending')
    end
  end

  describe ".multi_signature_sign" do
    it "returns a multi signature signed transaction" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.multi_signature_sign
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/multisignatures/sign')
    end
  end

  describe ".create_multi_signature" do
    it "returns a new multi signature" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.create_multi_signature
      expect(response['success']).to be true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

  describe ".multi_signature_accounts" do
    it "returns a valid response" do
      pending("Requires a public key! Will only be tested on local machines.")
      response = @client.multi_signature_accounts
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/multisignatures/accounts')
    end
  end

end
