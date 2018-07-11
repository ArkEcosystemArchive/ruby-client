require 'spec_helper'

describe ArkEcosystem::Client::API::Two::Wallets do
  before(:each) do
    get_v2_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.wallets.all
      expect(response.url).to eq("#{@host}/wallets")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.top' do
    it 'should be ok' do
      response = @connection.wallets.top
      expect(response.url).to eq("#{@host}/wallets/top")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.wallets.show('dummy')
      expect(response.url).to eq("#{@host}/wallets/dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.transactions' do
    it 'should be ok' do
      response = @connection.wallets.transactions('dummy')
      expect(response.url).to eq("#{@host}/wallets/dummy/transactions")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.sent_transactions' do
    it 'should be ok' do
      response = @connection.wallets.sent_transactions('dummy')
      expect(response.url).to eq("#{@host}/wallets/dummy/transactions/sent")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.received_transaction' do
    it 'should be ok' do
      response = @connection.wallets.received_transaction('dummy')
      expect(response.url).to eq("#{@host}/wallets/dummy/transactions/received")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.votes' do
    it 'should be ok' do
      response = @connection.wallets.votes('dummy')
      expect(response.url).to eq("#{@host}/wallets/dummy/votes")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.wallets.search(username: 'dummy')
      expect(response.url).to eq("#{@host}/wallets/search")
      expect(response.body['success']).to be_truthy
    end
  end
end
