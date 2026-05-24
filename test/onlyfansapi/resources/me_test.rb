# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::MeTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @onlyfansapi.me.retrieve("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MeRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MeRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::MeRetrieveResponse::Data | nil
      }
    end
  end

  def test_get_model_start_date
    skip("Mock server tests are disabled")

    response = @onlyfansapi.me.get_model_start_date("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MeGetModelStartDateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MeGetModelStartDateResponse::Meta | nil,
        data: Onlyfansapi::Models::MeGetModelStartDateResponse::Data | nil
      }
    end
  end
end
