# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::TrackingLinksTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.create("acct_XXXXXXXXXXXXXXX", name: "Twitter bio")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkCreateResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrackingLinkCreateResponse::Data]) | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.retrieve("architecto", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinkRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkListResponse::Meta | nil,
        _pagination: Onlyfans::Models::TrackingLinkListResponse::Pagination | nil,
        data: Onlyfans::Models::TrackingLinkListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.delete("architecto", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkDeleteResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_get_cohort_arps_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.get_cohort_arps("consequatur", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => nil
    end
  end

  def test_get_stats_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.tracking_links.get_stats("natus", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkGetStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkGetStatsResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinkGetStatsResponse::Data | nil
      }
    end
  end

  def test_list_spenders_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.tracking_links.list_spenders("tracking_link_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrackingLinkListSpendersResponse::Data]) | nil
      }
    end
  end

  def test_list_subscribers_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.tracking_links.list_subscribers(
        "tracking_link_id",
        account: "acct_XXXXXXXXXXXXXXX",
        limit: 10,
        offset: 0
      )

    assert_pattern do
      response => Onlyfans::Models::TrackingLinkListSubscribersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta | nil,
        data: Onlyfans::Models::TrackingLinkListSubscribersResponse::Data | nil
      }
    end
  end
end
