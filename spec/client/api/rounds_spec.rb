describe ArkEcosystem::Client::API::Rounds do
  before(:each) do
    get_connection
  end

  describe '.delegates' do
    it 'should be ok' do
      response = @connection.rounds.delegates(12345)
      expect(response.url).to eq("#{@host}/rounds/12345/delegates")
      expect(response.body['success']).to be_truthy
    end
  end
end
