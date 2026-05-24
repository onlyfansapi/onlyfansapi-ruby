# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Notifications::TabsOrderTest < Onlyfansapi::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.notifications.tabs_order.update(
        "acct_XXXXXXXXXXXXXXX",
        tabs: %w[
          all
          subscriptions
          onlyfans
          purchases
          tips
          tags
          comments
          mentions
          likes
          promotions
        ]
      )

    assert_pattern do
      response => Onlyfansapi::Models::Notifications::TabsOrderUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Notifications::TabsOrderUpdateResponse::Meta | nil,
        data: Onlyfansapi::Models::Notifications::TabsOrderUpdateResponse::Data | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.tabs_order.get("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Notifications::TabsOrderGetResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Notifications::TabsOrderGetResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
