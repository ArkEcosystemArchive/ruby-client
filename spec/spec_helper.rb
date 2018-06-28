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

  config.before(:each) do
    @host = 'http://localhost:1234/api'

    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get("#{@host}/v1/accounts") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/accounts/delegates") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/accounts/delegates/fee") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/accounts/getBalance") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/accounts/getPublickey") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/get") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getEpoch") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getFee") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getFees") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getHeight") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getMilestone") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getNethash") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getReward") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getStatus") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/blocks/getSupply") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/count") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/fee") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/forging/getForgedByAccount") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/forging/status") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/get") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/getNextForgers") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/search") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/delegates/voters") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/loader/autoconfigure") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/loader/status") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/loader/status/sync") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/peers") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/peers/get") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/peers/version") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/signatures/fee") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/transactions") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/transactions/get") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/transactions/unconfirmed") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v1/transactions/unconfirmed/get") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/blocks") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/blocks/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/blocks/dummy/transactions") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/delegates") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/delegates/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/delegates/dummy/blocks") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/delegates/dummy/voters") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/node/configuration") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/node/status") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/node/syncing") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/peers") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/peers/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/transactions") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/transactions/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/transactions/types") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/transactions/unconfirmed") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/transactions/unconfirmed/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/votes") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/votes/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/dummy") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/dummy/transactions") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/dummy/transactions/received") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/dummy/transactions/sent") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/dummy/votes") { |env| [200, {}, { success: true }] }
      stub.get("#{@host}/v2/wallets/top") { |env| [200, {}, { success: true }] }
      stub.post("#{@host}/v2/blocks/search") { |env| [200, {}, { success: true }] }
      stub.post("#{@host}/v2/transactions") { |env| [200, {}, { success: true }] }
      stub.post("#{@host}/v2/transactions/search") { |env| [200, {}, { success: true }] }
      stub.post("#{@host}/v2/wallets/search") { |env| [200, {}, { success: true }] }
    end

    @client = Faraday.new "#{@host}" do |builder|
      builder.adapter :test, stubs
    end
  end
end
