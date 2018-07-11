describe ArkEcosystem::Client::API::One::Delegates do
  before(:each) do
    get_v1_connection
  end

  describe '.all' do
    it 'should be ok' do
      response = @connection.delegates.all
      expect(response.url).to eq("#{@host}/delegates")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.show' do
    it 'should be ok' do
      response = @connection.delegates.show(username: 'dummy')
      expect(response.url).to eq("#{@host}/delegates/get?username=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.count' do
    it 'should be ok' do
      response = @connection.delegates.count
      expect(response.url).to eq("#{@host}/delegates/count")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.search' do
    it 'should be ok' do
      response = @connection.delegates.search('dummy')
      expect(response.url).to eq("#{@host}/delegates/search?q=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.voters' do
    it 'should be ok' do
      response = @connection.delegates.voters('dummy')
      expect(response.url).to eq("#{@host}/delegates/voters?publicKey=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.fee' do
    it 'should be ok' do
      response = @connection.delegates.fee
      expect(response.url).to eq("#{@host}/delegates/fee")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.forged_by_account' do
    it 'should be ok' do
      response = @connection.delegates.forged_by_account('dummy')
      expect(response.url).to eq("#{@host}/delegates/forging/getForgedByAccount?generatorPublicKey=dummy")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.next_forgers' do
    it 'should be ok' do
      response = @connection.delegates.next_forgers
      expect(response.url).to eq("#{@host}/delegates/getNextForgers")
      expect(response.body['success']).to be_truthy
    end
  end

  describe '.forging_status' do
    it 'should be ok' do
      response = @connection.delegates.forging_status('dummy')
      expect(response.url).to eq("#{@host}/delegates/forging/status?publicKey=dummy")
      expect(response.body['success']).to be_truthy
    end
  end
end
