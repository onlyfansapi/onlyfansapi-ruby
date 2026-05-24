# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Media::VaultTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.retrieve(1_234_567_890, account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Media::VaultRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::VaultRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::VaultRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Media::VaultListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::VaultListResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::VaultListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.delete("acct_XXXXXXXXXXXXXXX", media_ids: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::Media::VaultDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::VaultDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::VaultDeleteResponse::Data | nil
      }
    end
  end

  def test_upload
    skip("Mock server tests are disabled")

    response = @only_fans_api.media.vault.upload("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Media::VaultUploadResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::VaultUploadResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::VaultUploadResponse::Data | nil
      }
    end
  end
end
