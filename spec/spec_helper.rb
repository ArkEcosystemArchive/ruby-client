if ENV['CI'] == 'true'
  require 'simplecov'
  require 'codecov'

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

def get_connection
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
    host: @host
  )

  @connection.client.http_client = Faraday.new @host.to_s do |builder|
    builder.adapter :test, stubs
  end
end
