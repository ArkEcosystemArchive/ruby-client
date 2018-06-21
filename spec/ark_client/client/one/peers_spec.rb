describe ArkClient::API::One::Peers do
  before do
    @client = ArkClient::Connection.new({ host: "https://dexplorer.ark.io:8443/api/", version: 1 })
    @resource = @client.peers
  end

  describe '.list' do
    it 'should be ok' do
      response = @resource.list
      expect(response.status).to be 200
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @resource.show('1.1.1.1', 4000)
      expect(response.status).to be 200
    end
  end

  describe '.version' do
    it 'should be ok' do
      response = @resource.version
      expect(response.status).to be 200
    end
  end
end
