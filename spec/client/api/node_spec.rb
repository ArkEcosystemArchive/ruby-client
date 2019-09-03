describe ArkEcosystem::Client::API::Node do
  before(:each) do
    get_connection
  end

  describe '.status' do
    it 'should be ok' do
      response = @connection.node.status
      expect(response.url).to eq("#{@host}/node/status")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.syncing' do
    it 'should be ok' do
      response = @connection.node.syncing
      expect(response.url).to eq("#{@host}/node/syncing")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.configuration' do
    it 'should be ok' do
      response = @connection.node.configuration
      expect(response.url).to eq("#{@host}/node/configuration")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.crypto' do
    it 'should be ok' do
      response = @connection.node.crypto
      expect(response.url).to eq("#{@host}/node/configuration/crypto")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.fees' do
    it 'should be ok' do
      response = @connection.node.fees
      expect(response.url).to eq("#{@host}/node/fees")
      expect(response.body['success']).to be_truthy
    end

    it 'should be ok with params' do
      response = @connection.node.fees(14)
      expect(response.url).to eq("#{@host}/node/fees?days=14")
      expect(response.body['success']).to be_truthy
    end
  end
end
