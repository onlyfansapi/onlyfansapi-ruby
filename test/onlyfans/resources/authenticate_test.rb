# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::AuthenticateTest < Onlyfans::Test::ResourceTest
  def test_poll_status
    skip("Mock server tests are disabled")

    response = @only_fans_api.authenticate.poll_status("auth_XXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::AuthenticatePollStatusResponse
    end

    assert_pattern do
      response => {
        account: Onlyfans::Models::AuthenticatePollStatusResponse::Account | nil,
        last_attempt: Onlyfans::Models::AuthenticatePollStatusResponse::LastAttempt | nil,
        progress: String | nil,
        state: String | nil
      }
    end
  end

  def test_reauthenticate
    skip("Mock server tests are disabled")

    response = @only_fans_api.authenticate.reauthenticate("acct_XXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::AuthenticateReauthenticateResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        polling_url: String | nil,
        success: Onlyfans::Internal::Type::Boolean | nil
      }
    end
  end

  def test_send_2fa_email
    skip("Mock server tests are disabled")

    response = @only_fans_api.authenticate.send_2fa_email("auth_XXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::AuthenticateSend2faEmailResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        success: Onlyfans::Internal::Type::Boolean | nil
      }
    end
  end

  def test_start
    skip("Mock server tests are disabled")

    response = @only_fans_api.authenticate.start

    assert_pattern do
      response => Onlyfans::Models::AuthenticateStartResponse
    end

    assert_pattern do
      case response
      in Onlyfans::Models::AuthenticateStartResponse::UnionMember0
      in Onlyfans::Models::AuthenticateStartResponse::UnionMember1
      end
    end
  end

  def test_submit_2fa
    skip("Mock server tests are disabled")

    response = @only_fans_api.authenticate.submit_2fa("auth_XXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::AuthenticateSubmit2faResponse
    end

    assert_pattern do
      response => {
        message: String | nil
      }
    end
  end
end
