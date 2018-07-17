if ENV['CI'] == 'true'
  require 'codecov'
  require 'simplecov'

  SimpleCov.start
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'arkecosystem/client'
require 'bundler/setup'
require 'webmock/rspec'

WebMock.allow_net_connect!

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

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
    stub.get("#{@host}/accounts") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/delegates") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/delegates/fee") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/getBalance") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/accounts/getPublickey") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/get") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getEpoch") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getFee") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getFees") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getHeight") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getMilestone") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getNethash") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getReward") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getStatus") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/getSupply") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/count") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/fee") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/forging/getForgedByAccount") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/forging/status") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/get") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/getNextForgers") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/search") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/voters") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/autoconfigure") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/status") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/loader/status/sync") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/peers") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/get") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/version") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/signatures/fee") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/get") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed/get") { |_env| [200, {}, @response_body] }
  end

  @connection = ArkEcosystem::Client::Connection.new(
    host: @host,
    version: 1
  )

  @connection.client.http_client = Faraday.new @host.to_s do |builder|
    builder.adapter :test, stubs
  end
end

def get_v2_connection
  @host = 'http://localhost:1234/api'
  @response_body = '{"success": true}'

  stubs = Faraday::Adapter::Test::Stubs.new do |stub|
    stub.get("#{@host}/blocks") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/blocks/dummy/transactions") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy/blocks") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/delegates/dummy/voters") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/node/configuration") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/node/status") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/node/syncing") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/peers") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/peers/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/types") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/transactions/unconfirmed/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/votes") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/votes/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions/received") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/transactions/sent") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/dummy/votes") { |_env| [200, {}, @response_body] }
    stub.get("#{@host}/wallets/top") { |_env| [200, {}, @response_body] }
    stub.post("#{@host}/blocks/search") { |_env| [200, {}, @response_body] }
    stub.post("#{@host}/transactions") { |_env| [200, {}, @response_body] }
    stub.post("#{@host}/transactions/search") { |_env| [200, {}, @response_body] }
    stub.post("#{@host}/wallets/search") { |_env| [200, {}, @response_body] }
  end

  @connection = ArkEcosystem::Client::Connection.new(
    host: @host,
    version: 2
  )

  @connection.client.http_client = Faraday.new @host.to_s do |builder|
    builder.adapter :test, stubs
  end
end
