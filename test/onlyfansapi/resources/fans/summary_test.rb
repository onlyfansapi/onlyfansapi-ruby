# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Fans::SummaryTest < Onlyfansapi::Test::ResourceTest
  def test_generate_summary_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.summary.generate_summary("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Fans::SummaryGenerateSummaryResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_get_summary_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.fans.summary.get_summary("fan_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Fans::SummaryGetSummaryResponse
    end

    assert_pattern do
      response => {
        analyzed_message_count: Integer | nil,
        error_message: String | nil,
        last_analyzed_at: String | nil,
        status: String | nil,
        summary_data: Onlyfansapi::Models::Fans::SummaryGetSummaryResponse::SummaryData | nil
      }
    end
  end
end
