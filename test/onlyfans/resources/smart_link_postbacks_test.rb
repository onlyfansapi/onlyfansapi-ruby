# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::SmartLinkPostbacksTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.smart_link_postbacks.create(
        conversion_types: %w[new_subscriber new_transaction],
        smart_link_scope: :campaign_specific,
        url: "https://example.com/postback?click={click_id}&type={conversion_type}&gclid={gclid}"
      )

    assert_pattern do
      response => Onlyfans::Models::SmartLinkPostbackCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkPostbackCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_link_postbacks.retrieve(123)

    assert_pattern do
      response => Onlyfans::Models::SmartLinkPostbackRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.smart_link_postbacks.update(
        123,
        conversion_types: ["new_subscriber"],
        smart_link_scope: :global,
        url: "https://example.com/postback?click={click_id}&type={conversion_type}"
      )

    assert_pattern do
      response => Onlyfans::Models::SmartLinkPostbackUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta | nil,
        data: Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_link_postbacks.list

    assert_pattern do
      response => Onlyfans::Models::SmartLinkPostbackListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::SmartLinkPostbackListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkPostbackListResponse::Data]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @only_fans_api.smart_link_postbacks.delete(123)

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown])
    end
  end
end
