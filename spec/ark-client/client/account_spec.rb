require "spec_helper"

describe ArkClient::Client::Account do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".account_balance" do
    it "returns the balance of an account" do
      response = @client.account_balance(ENV['ADDRESS'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/accounts/getBalance?address=#{ENV['ADDRESS']}")
    end
  end

  describe ".account_publickey" do
    it "returns the publickey of an account" do
      response = @client.account_publickey(ENV['ADDRESS'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/accounts/getPublickey?address=#{ENV['ADDRESS']}")
    end
  end

  describe ".account_delegates" do
    it "returns the delegates of an account" do
      response = @client.account_delegates(ENV['ADDRESS'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/accounts/delegates?address=#{ENV['ADDRESS']}")
    end
  end

  describe ".account_delegates_fee" do
    it "returns the delegate fee of an account" do
      response = @client.account_delegates_fee(ENV['ADDRESS'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/accounts/delegates/fee?address=#{ENV['ADDRESS']}")
    end
  end

  describe ".create_account_delegates" do
    it "returns a new delegate for an account" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.create_account_delegates
      expect(response['success']).to be true
      assert_requested :put, ark_url('api/accounts/delegates')
    end
  end

  describe ".account" do
    it "returns the details of an account" do
      response = @client.account(ENV['ADDRESS'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/accounts?address=#{ENV['ADDRESS']}")
    end
  end

end
