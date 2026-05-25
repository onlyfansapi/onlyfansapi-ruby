# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Settings::SocialMediaButtonsTest < Onlyfans::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.update(
        "button_id",
        account: "acct_XXXXXXXXXXXXXXX",
        label: "Instagram"
      )

    assert_pattern do
      response => Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.social_media_buttons.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Settings::SocialMediaButtonListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::SocialMediaButtonListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Settings::SocialMediaButtonListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.delete("button_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse::Data | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.add(
        "acct_XXXXXXXXXXXXXXX",
        label: "Instagram",
        type: :instagram,
        value: "example_user"
      )

    assert_pattern do
      response => Onlyfans::Models::Settings::SocialMediaButtonAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Settings::SocialMediaButtonAddResponse::Data]) | nil
      }
    end
  end

  def test_reorder_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.reorder(
        "acct_XXXXXXXXXXXXXXX",
        button_ids: %w[string string]
      )

    assert_pattern do
      response => Onlyfans::Models::Settings::SocialMediaButtonReorderResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Settings::SocialMediaButtonReorderResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Settings::SocialMediaButtonReorderResponse::Data]) | nil
      }
    end
  end
end
