# frozen_string_literal: true

require_relative "../../../../test_helper"

class Onlyfans::Test::Resources::Media::Vault::Lists::MediaTest < Onlyfans::Test::ResourceTest
  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.media.vault.lists.media.add(
        "rerum",
        account: "acct_XXXXXXXXXXXXXXX",
        media_ids: ["string"]
      )

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::Lists::MediaAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::Lists::MediaAddResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::Lists::MediaAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.media.vault.lists.media.remove(
        "rerum",
        account: "acct_XXXXXXXXXXXXXXX",
        media_ids: ["string"]
      )

    assert_pattern do
      response => Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Meta | nil,
        data: Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse::Data | nil
      }
    end
  end
end
