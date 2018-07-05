describe ArkEcosystem::Client::API::One::Transactions do
  before(:each) do
    get_v1_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.transactions.all
      expect(response.url).to eq("#{@host}/transactions")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.transactions.show 'dummy'
      expect(response.url).to eq("#{@host}/transactions/get?id=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.all_unconfirmed' do
    it 'should be ok' do
      response = @connection.transactions.all_unconfirmed
      expect(response.url).to eq("#{@host}/transactions/unconfirmed")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show_unconfirmed' do
    it 'should be ok' do
      response = @connection.transactions.show_unconfirmed 'dummy'
      expect(response.url).to eq("#{@host}/transactions/unconfirmed/get?id=dummy")
      expect(response.body['success']).to be_truthy
    end
  end
end
