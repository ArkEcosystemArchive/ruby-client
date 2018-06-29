require 'spec_helper'

describe ArkEcosystem::Client::API::One::Accounts do
  before(:each) do
    get_v1_connection
  end

  describe '.balance' do
    it 'should be ok' do
      response = @connection.accounts.balance('dummy')
      expect(response.url).to eq("#{@host}/accounts/getBalance?address=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.public_key' do
    it 'should be ok' do
      response = @connection.accounts.public_key('dummy')
      expect(response.url).to eq("#{@host}/accounts/getPublickey?address=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.delegate' do
    it 'should be ok' do
      response = @connection.accounts.delegate('dummy')
      expect(response.url).to eq("#{@host}/accounts/delegates?address=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.delegates_fee' do
    it 'should be ok' do
      response = @connection.accounts.delegates_fee
      expect(response.url).to eq("#{@host}/accounts/delegates/fee")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.account' do
    it 'should be ok' do
      response = @connection.accounts.account('dummy')
      expect(response.url).to eq("#{@host}/accounts?address=dummy")
      expect(response.body['success']).to be_truthy
    end
  end
end
