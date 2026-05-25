# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::MeTest < Onlyfans::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.me.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MeRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MeRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::MeRetrieveResponse::Data | nil
      }
    end
  end

  def test_get_model_start_date
    skip("Mock server tests are disabled")

    response = @only_fans_api.me.get_model_start_date("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MeGetModelStartDateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MeGetModelStartDateResponse::Meta | nil,
        data: Onlyfans::Models::MeGetModelStartDateResponse::Data | nil
      }
    end
  end

  def test_get_top_percentage
    skip("Mock server tests are disabled")

    response = @only_fans_api.me.get_top_percentage("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MeGetTopPercentageResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MeGetTopPercentageResponse::Meta | nil,
        data: Onlyfans::Models::MeGetTopPercentageResponse::Data | nil
      }
    end
  end
end
