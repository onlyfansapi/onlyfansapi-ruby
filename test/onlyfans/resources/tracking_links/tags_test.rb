# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::TrackingLinks::TagsTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.tags.list(123_456_789, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinks::TagListResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.tracking_links.tags.add(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfans::Models::TrackingLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinks::TagAddResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinks::TagAddResponse::Data | nil
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
      response => Onlyfans::Models::TrackingLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
