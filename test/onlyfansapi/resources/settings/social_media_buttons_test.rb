# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Settings::SocialMediaButtonsTest < Onlyfansapi::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.update(
        "button_id",
        account: "acct_XXXXXXXXXXXXXXX",
        label: "Instagram"
      )

    assert_pattern do
      response => Onlyfansapi::Models::Settings::SocialMediaButtonUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::SocialMediaButtonUpdateResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Settings::SocialMediaButtonUpdateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.settings.social_media_buttons.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Settings::SocialMediaButtonListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::SocialMediaButtonListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Settings::SocialMediaButtonListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.settings.social_media_buttons.delete("button_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Settings::SocialMediaButtonDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::SocialMediaButtonDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Settings::SocialMediaButtonDeleteResponse::Data | nil
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
      response => Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data]) | nil
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
      response => Onlyfansapi::Models::Settings::SocialMediaButtonReorderResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Settings::SocialMediaButtonReorderResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Settings::SocialMediaButtonReorderResponse::Data]) | nil
      }
    end
  end
end
