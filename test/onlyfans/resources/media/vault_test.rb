# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Media::VaultTest < Onlyfans::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::VaultRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::VaultRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::Media::VaultRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::VaultListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::VaultListResponse::Meta | nil,
        data: Onlyfans::Models::Media::VaultListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.delete("acct_XXXXXXXXXXXXXXX", media_ids: ["string"])

    assert_pattern do
      response => Onlyfans::Models::Media::VaultDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::VaultDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Media::VaultDeleteResponse::Data | nil
      }
    end
  end

  def test_upload
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.upload("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Media::VaultUploadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::VaultUploadResponse::Meta | nil,
        data: Onlyfans::Models::Media::VaultUploadResponse::Data | nil
      }
    end
  end
end
