# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::StoredTest < Onlyfans::Test::ResourceTest
  def test_list_shared_tracking_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_shared_tracking_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoredListSharedTrackingLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta | nil,
        _pagination: Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination | nil,
        data: Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data | nil
      }
    end
  end

  def test_list_shared_trial_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_shared_trial_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoredListSharedTrialLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoredListSharedTrialLinksResponse::Meta | nil,
        _pagination: Onlyfans::Models::StoredListSharedTrialLinksResponse::Pagination | nil,
        data: Onlyfans::Models::StoredListSharedTrialLinksResponse::Data | nil
      }
    end
  end

  def test_list_tracking_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_tracking_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoredListTrackingLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoredListTrackingLinksResponse::Meta | nil,
        _pagination: Onlyfans::Models::StoredListTrackingLinksResponse::Pagination | nil,
        data: Onlyfans::Models::StoredListTrackingLinksResponse::Data | nil
      }
    end
  end

  def test_list_trial_links
    skip("Mock server tests are disabled")

    response = @only_fans_api.stored.list_trial_links("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::StoredListTrialLinksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::StoredListTrialLinksResponse::Meta | nil,
        _pagination: Onlyfans::Models::StoredListTrialLinksResponse::Pagination | nil,
        data: Onlyfans::Models::StoredListTrialLinksResponse::Data | nil
      }
    end
  end
end
