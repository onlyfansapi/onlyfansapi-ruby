# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SharedTrialLinksTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_trial_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrialLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrialLinkListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination | nil,
        data: Onlyfansapi::Models::SharedTrialLinkListResponse::Data | nil
      }
    end
  end

  def test_revoke_access_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_trial_links.revoke_access(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrialLinkRevokeAccessResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrialLinkRevokeAccessResponse::Meta | nil,
        data: Onlyfansapi::Models::SharedTrialLinkRevokeAccessResponse::Data | nil
      }
    end
  end
end
