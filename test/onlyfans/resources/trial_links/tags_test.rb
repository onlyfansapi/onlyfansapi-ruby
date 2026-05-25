# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::TrialLinks::TagsTest < Onlyfans::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.tags.list(123_456_789, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrialLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinks::TagListResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.tags.add(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfans::Models::TrialLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinks::TagAddResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinks::TagAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.tags.remove(123_456_789, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfans::Models::TrialLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
