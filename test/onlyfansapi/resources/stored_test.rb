# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::StoredTest < Onlyfansapi::Test::ResourceTest
  def test_list_shared_tracking_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_shared_tracking_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoredListSharedTrackingLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoredListSharedTrackingLinksResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::StoredListSharedTrackingLinksResponse::Pagination | nil,
        data: Onlyfansapi::Models::StoredListSharedTrackingLinksResponse::Data | nil
      }
    end
  end

  def test_list_shared_trial_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_shared_trial_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoredListSharedTrialLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoredListSharedTrialLinksResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::StoredListSharedTrialLinksResponse::Pagination | nil,
        data: Onlyfansapi::Models::StoredListSharedTrialLinksResponse::Data | nil
      }
    end
  end

  def test_list_tracking_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_tracking_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoredListTrackingLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoredListTrackingLinksResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::StoredListTrackingLinksResponse::Pagination | nil,
        data: Onlyfansapi::Models::StoredListTrackingLinksResponse::Data | nil
      }
    end
  end

  def test_list_trial_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_trial_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::StoredListTrialLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::StoredListTrialLinksResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::StoredListTrialLinksResponse::Pagination | nil,
        data: Onlyfansapi::Models::StoredListTrialLinksResponse::Data | nil
      }
    end
  end
end
