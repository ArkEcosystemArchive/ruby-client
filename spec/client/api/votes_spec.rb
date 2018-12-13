describe ArkEcosystem::Client::API::Votes do
  before(:each) do
    get_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.votes.all
      expect(response.url).to eq("#{@host}/votes")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.votes.show('dummy')
      expect(response.url).to eq("#{@host}/votes/dummy")
      expect(response.body['success']).to be_truthy
    end
  end
end
