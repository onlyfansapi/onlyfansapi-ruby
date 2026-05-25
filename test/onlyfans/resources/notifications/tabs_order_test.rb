# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Notifications::TabsOrderTest < Onlyfans::Test::ResourceTest
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
      response => Onlyfans::Models::Notifications::TabsOrderUpdateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Notifications::TabsOrderUpdateResponse::Meta | nil,
        data: Onlyfans::Models::Notifications::TabsOrderUpdateResponse::Data | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @only_fans_api.notifications.tabs_order.get("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Notifications::TabsOrderGetResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Notifications::TabsOrderGetResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
