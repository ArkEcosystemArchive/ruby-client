require "spec_helper"

describe ArkClient::Client::Transaction do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".transaction" do
    it "returns a transaction" do
      response = @client.transaction("ee9ad2a66e9b2009a9fc671f80d0493803fc422161140169c7bc1fd401cd9ad6")
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/transactions/get?id=ee9ad2a66e9b2009a9fc671f80d0493803fc422161140169c7bc1fd401cd9ad6')
    end
  end

  describe ".transactions" do
    it "returns a list of transactions" do
      response = @client.transactions
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/transactions')
    end
  end

  describe ".unconfirmed_transaction" do
    it "returns an unconfirmed transaction" do
      response = @client.unconfirmed_transaction("ee9ad2a66e9b2009a9fc671f80d0493803fc422161140169c7bc1fd401cd9ad6")
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/transactions/unconfirmed/get?id=ee9ad2a66e9b2009a9fc671f80d0493803fc422161140169c7bc1fd401cd9ad6')
    end
  end

  describe ".unconfirmed_transactions" do
    it "returns a list of unconfirmed transactions" do
      response = @client.unconfirmed_transactions
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/transactions/unconfirmed')
    end
  end

  describe ".create_transaction" do
    it "returns a new transaction" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.create_transaction
      expect(response['success']).to be true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

end
