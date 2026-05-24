# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::ChargebacksTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChargebackListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChargebackListResponse::Meta | nil,
        data: Onlyfansapi::Models::ChargebackListResponse::Data | nil
      }
    end
  end

  def test_calculate_ratio
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.calculate_ratio("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChargebackCalculateRatioResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChargebackCalculateRatioResponse::Meta | nil,
        data: Onlyfansapi::Models::ChargebackCalculateRatioResponse::Data | nil
      }
    end
  end

  def test_list_statistics
    skip("Mock server tests are disabled")

    response = @only_fans_api.chargebacks.list_statistics("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::ChargebackListStatisticsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta | nil,
        data: Onlyfansapi::Models::ChargebackListStatisticsResponse::Data | nil
      }
    end
  end
end
