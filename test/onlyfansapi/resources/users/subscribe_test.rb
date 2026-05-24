# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Users::SubscribeTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.subscribe.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Users::SubscribeCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::SubscribeCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::SubscribeCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.users.subscribe.delete("user_id", account: "acct_XXXXXXXXXXXXXXX", reason: "reason")

    assert_pattern do
      response => Onlyfansapi::Models::Users::SubscribeDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::SubscribeDeleteResponse::Data | nil
      }
    end
  end
end
