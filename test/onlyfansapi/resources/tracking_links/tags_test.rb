# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::TrackingLinks::TagsTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.tags.list(123_456_789, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinks::TagListResponse::Meta | nil,
        data: Onlyfansapi::Models::TrackingLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.tracking_links.tags.add(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinks::TagAddResponse::Meta | nil,
        data: Onlyfansapi::Models::TrackingLinks::TagAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.tracking_links.tags.remove(
        123_456_789,
        account: "acct_XXXXXXXXXXXXXXX",
        tags: ["string"]
      )

    assert_pattern do
      response => Onlyfansapi::Models::TrackingLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrackingLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::TrackingLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
