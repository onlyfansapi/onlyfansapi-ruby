# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Users::BlockTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.block.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Users::BlockCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::BlockCreateResponse::Meta | nil,
        data: Onlyfans::Models::Users::BlockCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.block.delete("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Users::BlockDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::BlockDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Users::BlockDeleteResponse::Data | nil
      }
    end
  end
end
