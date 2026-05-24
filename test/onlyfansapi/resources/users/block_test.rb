# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Users::BlockTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.block.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Users::BlockCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::BlockCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::BlockCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.block.delete("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Users::BlockDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::BlockDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::BlockDeleteResponse::Data | nil
      }
    end
  end
end
