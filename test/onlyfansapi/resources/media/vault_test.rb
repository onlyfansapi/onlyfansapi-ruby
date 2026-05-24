# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Media::VaultTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.media.vault.list("acct_XXXXXXXXXXXXXXX")

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

    response = @onlyfansapi.media.vault.delete("acct_XXXXXXXXXXXXXXX", media_ids: ["string"])

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
end
