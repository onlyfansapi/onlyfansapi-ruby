# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Users::SubscribeTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.subscribe.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Users::SubscribeCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::SubscribeCreateResponse::Meta | nil,
        data: Onlyfans::Models::Users::SubscribeCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.users.subscribe.delete("user_id", account: "acct_XXXXXXXXXXXXXXX", reason: "reason")

    assert_pattern do
      response => Onlyfans::Models::Users::SubscribeDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::SubscribeDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Users::SubscribeDeleteResponse::Data | nil
      }
    end
  end
end
