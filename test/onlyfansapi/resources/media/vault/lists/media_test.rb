# frozen_string_literal: true

require_relative "../../../../test_helper"

class Onlyfansapi::Test::Resources::Media::Vault::Lists::MediaTest < Onlyfansapi::Test::ResourceTest
  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.media.vault.lists.media.add("ut", account: "acct_XXXXXXXXXXXXXXX", media_ids: ["string"])

    assert_pattern do
      response => Onlyfansapi::Models::Media::Vault::Lists::MediaAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::Vault::Lists::MediaAddResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::Vault::Lists::MediaAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.media.vault.lists.media.remove(
        "ut",
        account: "acct_XXXXXXXXXXXXXXX",
        media_ids: ["string"]
      )

    assert_pattern do
      response => Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::Media::Vault::Lists::MediaRemoveResponse::Data | nil
      }
    end
  end
end
