require 'spec_helper'

describe ArkEcosystem::Client::API::One::Loader do
  before(:each) do
    get_v1_connection
  end

  describe '.status' do
    it 'should be ok' do
      response = @connection.loader.status
      expect(response.url).to eq("#{@host}/loader/status")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.sync' do
    it 'should be ok' do
      response = @connection.loader.sync
      expect(response.url).to eq("#{@host}/loader/status/sync")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.autoconfigure' do
    it 'should be ok' do
      response = @connection.loader.autoconfigure
      expect(response.url).to eq("#{@host}/loader/autoconfigure")
      expect(response.body['success']).to be_truthy
    end
  end
end
