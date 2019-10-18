describe ArkEcosystem::Client::API::Businesses do
  before(:each) do
    get_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.businesses.all
      expect(response.url).to eq("#{@host}/businesses")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.businesses.show('dummy')
      expect(response.url).to eq("#{@host}/businesses/dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.bridgechains' do
    it 'should be ok' do
      response = @connection.businesses.bridgechains('dummy')
      expect(response.url).to eq("#{@host}/businesses/dummy/bridgechains")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.businesses.search(id: 'dummy')
      expect(response.url).to eq("#{@host}/businesses/search")
      expect(response.body['success']).to be_truthy
    end
  end
end
