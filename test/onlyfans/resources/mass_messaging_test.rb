# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::MassMessagingTest < Onlyfans::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.retrieve("id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::MassMessagingRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.update("id", account: "acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingUpdateResponse::Meta | nil,
        data: Onlyfans::Models::MassMessagingUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::MassMessagingListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.delete("id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingDeleteResponse::Meta | nil,
        data: Onlyfans::Models::MassMessagingDeleteResponse::Data | nil
      }
    end
  end

  def test_retrieve_overview
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.retrieve_overview("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingRetrieveOverviewResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingRetrieveOverviewResponse::Meta | nil,
        data: Onlyfans::Models::MassMessagingRetrieveOverviewResponse::Data | nil
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.mass_messaging.send_("acct_XXXXXXXXXXXXXXX", text: "Hello!")

    assert_pattern do
      response => Onlyfans::Models::MassMessagingSendResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::MassMessagingSendResponse::Meta | nil,
        data: Onlyfans::Models::MassMessagingSendResponse::Data | nil
      }
    end
  end
end
