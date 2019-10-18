describe ArkEcosystem::Client::API::Bridgechains do
  before(:each) do
    get_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.bridgechains.all
      expect(response.url).to eq("#{@host}/bridgechains")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.bridgechains.show('dummy')
      expect(response.url).to eq("#{@host}/bridgechains/dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.bridgechains.search(id: 'dummy')
      expect(response.url).to eq("#{@host}/bridgechains/search")
      expect(response.body['success']).to be_truthy
    end
  end
end
