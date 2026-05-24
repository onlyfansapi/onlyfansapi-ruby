# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::SharedTrialLinks::TagsTest < Onlyfansapi::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.shared_trial_links.tags.list(123, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrialLinks::TagListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrialLinks::TagListResponse::Meta | nil,
        data: Onlyfansapi::Models::SharedTrialLinks::TagListResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.shared_trial_links.tags.add(123, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrialLinks::TagAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrialLinks::TagAddResponse::Meta | nil,
        data: Onlyfansapi::Models::SharedTrialLinks::TagAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.shared_trial_links.tags.remove(123, account: "acct_XXXXXXXXXXXXXXX", tags: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::SharedTrialLinks::TagRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SharedTrialLinks::TagRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::SharedTrialLinks::TagRemoveResponse::Data | nil
      }
    end
  end
end
