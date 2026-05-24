# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SharedTrackingLinksTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_tracking_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrackingLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrackingLinkListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::SharedTrackingLinkListResponse::Pagination | nil,
        data: Onlyfansapi::Models::SharedTrackingLinkListResponse::Data | nil
      }
    end
  end

  def test_revoke_access_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_tracking_links.revoke_access(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse::Meta | nil,
        data: Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse::Data | nil
      }
    end
  end
end
