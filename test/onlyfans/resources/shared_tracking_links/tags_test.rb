# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::SharedTrackingLinks::TagsTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_tracking_links.tags.list(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::SharedTrackingLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrackingLinks::TagListResponse::Meta | nil,
        data: Onlyfans::Models::SharedTrackingLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.shared_tracking_links.tags.add(123, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfans::Models::SharedTrackingLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrackingLinks::TagAddResponse::Meta | nil,
        data: Onlyfans::Models::SharedTrackingLinks::TagAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.shared_tracking_links.tags.remove(123, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfans::Models::SharedTrackingLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SharedTrackingLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfans::Models::SharedTrackingLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
