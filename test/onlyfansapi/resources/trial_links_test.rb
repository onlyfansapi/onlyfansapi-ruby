# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::TrialLinksTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.create(
        "acct_XXXXXXXXXXXXXXX",
        duration: 7,
        offer_expiration: 7,
        offer_limit: 7
      )

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkCreateResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::TrialLinkCreateResponse::Pagination | nil,
        data: Onlyfansapi::Models::TrialLinkCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve("quia", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinkRetrieveResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.list("acct_XXXXXXXXXXXXXXX", limit: 10, offset: 0)

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::TrialLinkListResponse::Pagination | nil,
        data: Onlyfansapi::Models::TrialLinkListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.delete("quia", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_spenders_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.list_spenders("trial_link_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::TrialLinkListSpendersResponse::Data]) | nil
      }
    end
  end

  def test_list_subscribers_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.trial_links.list_subscribers(
        "eaque",
        account: "acct_XXXXXXXXXXXXXXX",
        limit: 10,
        offset: 0
      )

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkListSubscribersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkListSubscribersResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinkListSubscribersResponse::Data | nil
      }
    end
  end

  def test_retrieve_cohort_arps_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve_cohort_arps("accusamus", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve_stats("et", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TrialLinkRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TrialLinkRetrieveStatsResponse::Meta | nil,
        data: Onlyfansapi::Models::TrialLinkRetrieveStatsResponse::Data | nil
      }
    end
  end
end
