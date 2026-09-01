# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SmartLinksTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.smart_links.create(
        account_id: "acct_XXXXXXXX",
        link_type: :free_trial,
        name: "Instagram Bio Link"
      )

    assert_pattern do
      response => Onlyfans::Models::SmartLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkCreateResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve("01JCZWQJZXQJZXQJZXQJZXQJZX")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list

    assert_pattern do
      response => Onlyfans::Models::SmartLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListResponse::Data]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.delete("01JCZWQJZXQJZXQJZXQJZXQJZX")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkDeleteResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_clicks
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_clicks("unde")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkListClicksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkListClicksResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkListClicksResponse::Data | nil
      }
    end
  end

  def test_list_conversions
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_conversions("omnis")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkListConversionsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkListConversionsResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkListConversionsResponse::Data | nil
      }
    end
  end

  def test_list_fans
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_fans("fugiat")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkListFansResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkListFansResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkListFansResponse::Data | nil
      }
    end
  end

  def test_list_spenders
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_spenders("quidem")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListSpendersResponse::Data]) | nil
      }
    end
  end

  def test_retrieve_cohort_arps
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve_cohort_arps("cupiditate")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_stats
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve_stats("eum")

    assert_pattern do
      response => Onlyfans::Models::SmartLinkRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data | nil
      }
    end
  end
end
