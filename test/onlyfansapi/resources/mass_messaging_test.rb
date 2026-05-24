# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::MassMessagingTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.retrieve("id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::MassMessagingRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.update("id", account: "acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::MassMessagingUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::MassMessagingListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.delete("id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::MassMessagingDeleteResponse::Data | nil
      }
    end
  end

  def test_retrieve_overview
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.retrieve_overview("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingRetrieveOverviewResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingRetrieveOverviewResponse::Meta | nil,
        data: Onlyfansapi::Models::MassMessagingRetrieveOverviewResponse::Data | nil
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.send_("acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfansapi::Models::MassMessagingSendResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::MassMessagingSendResponse::Meta | nil,
        data: Onlyfansapi::Models::MassMessagingSendResponse::Data | nil
      }
    end
  end
end
