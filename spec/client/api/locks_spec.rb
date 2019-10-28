describe ArkEcosystem::Client::API::Locks do
  before(:each) do
    get_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.locks.all
      expect(response.url).to eq("#{@host}/locks")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.locks.show('dummy')
      expect(response.url).to eq("#{@host}/locks/dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.locks.search(id: 'dummy')
      expect(response.url).to eq("#{@host}/locks/search")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.unlocked' do
    it 'should be ok' do
      response = @connection.locks.unlocked(id: 'dummy')
      expect(response.url).to eq("#{@host}/locks/unlocked")
      expect(response.body['success']).to be_truthy
    end
  end
end
