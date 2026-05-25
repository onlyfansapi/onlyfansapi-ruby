# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SharedTrialLinksTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_trial_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SharedTrialLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrialLinkListResponse::Meta | nil,
        _pagination: Onlyfans::Models::SharedTrialLinkListResponse::Pagination | nil,
        data: Onlyfans::Models::SharedTrialLinkListResponse::Data | nil
      }
    end
  end

  def test_revoke_access_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_trial_links.revoke_access(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SharedTrialLinkRevokeAccessResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta | nil,
        data: Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Data | nil
      }
    end
  end
end
