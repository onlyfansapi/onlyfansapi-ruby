# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::ChargebacksTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChargebackListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChargebackListResponse::Meta | nil,
        data: Onlyfans::Models::ChargebackListResponse::Data | nil
      }
    end
  end

  def test_calculate_ratio
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.calculate_ratio("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChargebackCalculateRatioResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChargebackCalculateRatioResponse::Meta | nil,
        data: Onlyfans::Models::ChargebackCalculateRatioResponse::Data | nil
      }
    end
  end

  def test_list_statistics
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.list_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::ChargebackListStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::ChargebackListStatisticsResponse::Meta | nil,
        data: Onlyfans::Models::ChargebackListStatisticsResponse::Data | nil
      }
    end
  end
end
