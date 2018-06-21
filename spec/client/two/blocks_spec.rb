describe ArkEcosystem::Client::API::Two::Blocks do
  before(:each) do
    get_v2_connection
  end

  before(:each) do
    get_v2_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.blocks.all
      expect(response.url).to eq("#{@host}/blocks")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.blocks.show('dummy')
      expect(response.url).to eq("#{@host}/blocks/dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.transactions' do
    it 'should be ok' do
      response = @connection.blocks.transactions('dummy')
      expect(response.url).to eq("#{@host}/blocks/dummy/transactions")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.blocks.search(id: 'dummy')
      expect(response.url).to eq("#{@host}/blocks/search")
      expect(response.body['success']).to be_truthy
    end
  end
end
