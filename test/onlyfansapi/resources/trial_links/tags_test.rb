# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::TrialLinks::TagsTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.tags.list(123_456_789, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinks::TagListResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.tags.add(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinks::TagAddResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinks::TagAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.tags.remove(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
