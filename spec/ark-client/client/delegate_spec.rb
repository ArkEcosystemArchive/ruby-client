require "spec_helper"

describe ArkClient::Client::Delegate do

  before do
    @client = ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION'],
      :network_address => ENV['NETWORK_ADDRESS']
    )
  end

  describe ".count_delegates" do
    it "returns a valid response" do
      response = @client.count_delegates
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates/count')
    end
  end

  describe ".search_delegates" do
    it "returns a valid response" do
      response = @client.search_delegates("query")
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates/search?q=query')
    end
  end

  describe ".delegate_voters" do
    it "returns a valid response" do
      response = @client.delegate_voters(ENV['PUBLIC_KEY'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/delegates/voters?publicKey=#{ENV['PUBLIC_KEY']}")
    end
  end

  describe ".delegate" do
    it "returns a valid response" do
      response = @client.delegate({publicKey: ENV['PUBLIC_KEY']})
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates/get')
    end
  end

  describe ".delegates" do
    it "returns a valid response" do
      response = @client.delegates
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates')
    end
  end

  describe ".delegate_fee" do
    it "returns a valid response" do
      response = @client.delegate_fee
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates/fee')
    end
  end

  describe ".forged_by_account" do
    it "returns a valid response" do
      response = @client.forged_by_account(ENV['PUBLIC_KEY'])
      expect(response['success']).to be true
      assert_requested :get, ark_url("api/delegates/forging/getForgedByAccount?generatorPublicKey=#{ENV['PUBLIC_KEY']}")
    end
  end

  describe ".create_delegate" do
    it "returns a valid response" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.create_delegate
      expect(response['success']).to be true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

  describe ".vote_for_delegate" do
    it "returns a valid response" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.vote_for_delegate
      expect(response['success']).to be true
      assert_requested :post, ark_url('peer/transactions')
    end
  end

  describe ".next_forgers" do
    it "returns a valid response" do
      response = @client.next_forgers
      expect(response['success']).to be true
      assert_requested :get, ark_url('api/delegates/getNextForgers')
    end
  end

  describe ".enable_forging" do
    it "returns a valid response" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.enable_forging(ENV['SECRET'])
      expect(response['success']).to be true
      assert_requested :post, ark_url('api/delegates/forging/enable')
    end
  end

  describe ".disable_forging" do
    it "returns a valid response" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.disable_forging(ENV['SECRET'])
      expect(response['success']).to be true
      assert_requested :post, ark_url('api/delegates/forging/disable')
    end
  end

  describe ".forging_status" do
    it "returns a valid response" do
      pending("Requires a secret! Will only be tested on local machines.")
      response = @client.forging_status(ENV['SECRET'])
      expect(response['success']).to be true
      assert_requested :post, ark_url('api/delegates/forging/disable')
    end
  end

end
