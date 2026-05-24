# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::AuthenticateTest < Onlyfansapi::Test::ResourceTest
  def test_poll_status
    skip("Mock server tests are disabled")

    response = @onlyfansapi.authenticate.poll_status("auth_XXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::AuthenticatePollStatusResponse
    end

    assert_pattern do
      response => {
        account: Onlyfansapi::Models::AuthenticatePollStatusResponse::Account | nil,
        last_attempt: Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt | nil,
        progress: String | nil,
        state: String | nil
      }
    end
  end

  def test_reauthenticate
    skip("Mock server tests are disabled")

    response = @onlyfansapi.authenticate.reauthenticate("acct_XXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_start_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.authenticate.start(
        email: "jalyn75@example.net",
        password: "vXIA}fx5Ek:",
        proxy_country: :pl
      )

    assert_pattern do
      response => Onlyfansapi::Models::AuthenticateStartResponse
    end

    assert_pattern do
      response => {
        attempt_id: String | nil,
        message: String | nil,
        polling_url: String | nil
      }
    end
  end

  def test_submit_2fa_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.authenticate.submit_2fa("auth_XXXXXXX", code: "12345")

    assert_pattern do
      response => Onlyfansapi::Models::AuthenticateSubmit2faResponse
    end

    assert_pattern do
      response => {
        message: String | nil
      }
    end
  end
end
