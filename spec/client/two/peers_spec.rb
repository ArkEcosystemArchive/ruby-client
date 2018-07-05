describe ArkEcosystem::Client::API::Two::Peers do
  before(:each) do
    get_v2_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.peers.all
      expect(response.url).to eq("#{@host}/peers")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.peers.show('dummy')
      expect(response.url).to eq("#{@host}/peers/dummy")
      expect(response.body['success']).to be_truthy
    end
  end
end
