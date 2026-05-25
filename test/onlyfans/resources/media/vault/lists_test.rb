# frozen_string_literal: true

require_relative "../../../test_helper"

class Onlyfans::Test::Resources::Media::Vault::ListsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.lists.create("acct_XXXXXXXXXXXXXXX", name: "My new list")

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::ListCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::ListCreateResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::ListCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.lists.retrieve("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::ListRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::ListRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::ListRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.lists.update("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::ListUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::ListUpdateResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::ListUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.lists.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::ListListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::ListListResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::ListListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.lists.delete("123", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::ListDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::ListDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::ListDeleteResponse::Data | nil
      }
    end
  end
end
