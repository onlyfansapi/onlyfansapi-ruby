# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Users::RestrictTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.restrict.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Users::RestrictCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::RestrictCreateResponse::Meta | nil,
        data: Onlyfans::Models::Users::RestrictCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.restrict.delete("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Users::RestrictDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Users::RestrictDeleteResponse::Meta | nil,
        data: Onlyfans::Models::Users::RestrictDeleteResponse::Data | nil
      }
    end
  end
end
