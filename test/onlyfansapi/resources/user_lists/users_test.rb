# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::UserLists::UsersTest < Onlyfansapi::Test::ResourceTest
  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.user_lists.users.add(
        1_224_114_714,
        account: "acct_XXXXXXXXXXXXXXX",
        ids: %w[string string string]
      )

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserAddResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserAddResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserAddResponse::Data | nil
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @onlyfansapi.user_lists.users.remove(
        123_456,
        account: "acct_XXXXXXXXXXXXXXX",
        user_list_id: 1_224_114_714
      )

    assert_pattern do
      response => Onlyfansapi::Models::UserLists::UserRemoveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::UserLists::UserRemoveResponse::Meta | nil,
        data: Onlyfansapi::Models::UserLists::UserRemoveResponse::Data | nil
      }
    end
  end
end
