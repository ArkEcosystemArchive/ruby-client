require "bundler/setup"
require "webmock/rspec"
require "arkecosystem/client"

WebMock.allow_net_connect!

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def get_v1_connection
  @host = 'http://localhost:1234/api'
  @response_body = '{"success": true}'

  stubs = Faraday::Adapter::Test::Stubs.new do |stub|
    stub.get("#{@host}/accounts") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/delegates") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/delegates/fee") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/getBalance") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/getPublickey") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/get") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getEpoch") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getFee") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getFees") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getHeight") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getMilestone") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getNethash") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getReward") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getStatus") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getSupply") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/count") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/fee") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/forging/getForgedByAccount") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/forging/status") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/get") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/getNextForgers") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/search") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/voters") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/autoconfigure") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/status") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/status/sync") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/peers") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/get") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/version") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/signatures/fee") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/get") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed/get") { |env| [200, {}, @response_body] }
  end

  @connection = ArkEcosystem::Client::Connection.new(
    {
      host: @host,
      version: 1
    }
  )

  @connection.client.http_client = Faraday.new "#{@host}" do |builder|
    builder.adapter :test, stubs
  end
end

def get_v2_connection
  @host = 'http://localhost:1234/api'
  @response_body = '{"success": true}'

  stubs = Faraday::Adapter::Test::Stubs.new do |stub|
    stub.get("#{@host}/blocks") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/dummy/transactions") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy/blocks") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy/voters") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/node/configuration") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/node/status") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/node/syncing") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/peers") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/types") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/votes") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/votes/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions/received") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions/sent") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/votes") { |env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/top") { |env| [200, {}, @response_body] }
    stub.post("#{@host}/blocks/search") { |env| [200, {}, @response_body] }
    stub.post("#{@host}/transactions") { |env| [200, {}, @response_body] }
    stub.post("#{@host}/transactions/search") { |env| [200, {}, @response_body] }
    stub.post("#{@host}/wallets/search") { |env| [200, {}, @response_body] }
  end

  @connection = ArkEcosystem::Client::Connection.new(
    {
      host: @host,
      version: 2
    }
  )

  @connection.client.http_client = Faraday.new "#{@host}" do |builder|
    builder.adapter :test, stubs
  end
end
