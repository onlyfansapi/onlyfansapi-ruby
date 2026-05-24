# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Workflows::AccountPerformanceTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_starting_revenues
    skip("Mock server tests are disabled")

    response = @onlyfansapi.workflows.account_performance.retrieve_starting_revenues("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end
end
