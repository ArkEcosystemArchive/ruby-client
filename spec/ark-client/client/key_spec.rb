require "spec_helper"

describe ArkClient::Client::Delegate do
  let(:client) do
    ArkClient::Client.new(
      :ip => ENV['IP'],
      :port => ENV['PORT'],
      :nethash => ENV['NETHASH'],
      :version => ENV['VERSION']
    )
  end
  let(:secret) { 'this is a top secret passphrase' }

  it 'should generate the correct private and public key' do
    key = client.get_key(secret)
    expect(key.priv).to eq('2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b')
    expect(key.pub).to eq('03a02b9d5fdd1307c2ee4652ba54d492d1fd11a7d1bb3f3a44c4a05e79f19de933')
  end
end
