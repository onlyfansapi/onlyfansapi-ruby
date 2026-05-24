# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::TrackingLinksTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.tracking_links.create("acct_XXXXXXXXXXXXXXX", name: "Twitter bio")

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinkCreateResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::TrackingLinkCreateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.tracking_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinkListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::TrackingLinkListResponse::Pagination | nil,
        data: Onlyfansapi::Models::TrackingLinkListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.tracking_links.delete("tracking_link_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinkDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::TrackingLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_spenders_required_params
    skip("Mock server tests are disabled")

    response = @onlyfansapi.tracking_links.list_spenders("tracking_link_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::TrackingLinkListSpendersResponse::Data]) | nil
      }
    end
  end

  def test_list_subscribers_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.tracking_links.list_subscribers(
        "tracking_link_id",
        account: "acct_XXXXXXXXXXXXXXX",
        limit: 10,
        offset: 0
      )

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinkListSubscribersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinkListSubscribersResponse::Meta | nil,
        data: Onlyfansapi::Models::TrackingLinkListSubscribersResponse::Data | nil
      }
    end
  end
end
