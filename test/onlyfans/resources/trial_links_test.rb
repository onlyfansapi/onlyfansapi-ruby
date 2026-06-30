# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::TrialLinksTest < Onlyfans::Test::ResourceTest
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
      response => Onlyfans::Models::TrialLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkCreateResponse::Meta | nil,
        _pagination: Onlyfans::Models::TrialLinkCreateResponse::Pagination | nil,
        data: Onlyfans::Models::TrialLinkCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve("eaque", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrialLinkRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinkRetrieveResponse::Data | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.list("acct_XXXXXXXXXXXXXXX", limit: 10, offset: 0)

    assert_pattern do
      response => Onlyfans::Models::TrialLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkListResponse::Meta | nil,
        _pagination: Onlyfans::Models::TrialLinkListResponse::Pagination | nil,
        data: Onlyfans::Models::TrialLinkListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.delete("eaque", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrialLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkDeleteResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_spenders_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.list_spenders("trial_link_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrialLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrialLinkListSpendersResponse::Data]) | nil
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
      response => Onlyfans::Models::TrialLinkListSubscribersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkListSubscribersResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinkListSubscribersResponse::Data | nil
      }
    end
  end

  def test_retrieve_cohort_arps_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve_cohort_arps("rerum", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.trial_links.retrieve_stats("qui", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrialLinkRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrialLinkRetrieveStatsResponse::Meta | nil,
        data: Onlyfans::Models::TrialLinkRetrieveStatsResponse::Data | nil
      }
    end
  end
end
