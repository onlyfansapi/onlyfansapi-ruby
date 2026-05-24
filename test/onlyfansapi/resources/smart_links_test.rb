# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::SmartLinksTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.smart_links.create(
        account_id: "acct_XXXXXXXX",
        link_type: :free_trial,
        name: "Instagram Bio Link"
      )

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve("01JCZWQJZXQJZXQJZXQJZXQJZX")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListResponse::Data]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.delete("01JCZWQJZXQJZXQJZXQJZXQJZX")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_clicks
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_clicks("ab")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkListClicksResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkListClicksResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkListClicksResponse::Data | nil
      }
    end
  end

  def test_list_conversions
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_conversions("veniam")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkListConversionsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkListConversionsResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkListConversionsResponse::Data | nil
      }
    end
  end

  def test_list_fans
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_fans("autem")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkListFansResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkListFansResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkListFansResponse::Data | nil
      }
    end
  end

  def test_list_spenders
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.list_spenders("ducimus")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkListSpendersResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListSpendersResponse::Data]) | nil
      }
    end
  end

  def test_retrieve_cohort_arps
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve_cohort_arps("minima")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_stats
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_links.retrieve_stats("ut")

    assert_pattern do
      response => Onlyfansapi::Models::SmartLinkRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta | nil,
        data: Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data | nil
      }
    end
  end
end
