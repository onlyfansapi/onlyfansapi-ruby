# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SharedTrackingLinksTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_tracking_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SharedTrackingLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrackingLinkListResponse::Meta | nil,
        _pagination: Onlyfans::Models::SharedTrackingLinkListResponse::Pagination | nil,
        data: Onlyfans::Models::SharedTrackingLinkListResponse::Data | nil
      }
    end
  end

  def test_revoke_access_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_tracking_links.revoke_access(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse::Meta | nil,
        data: Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse::Data | nil
      }
    end
  end
end
