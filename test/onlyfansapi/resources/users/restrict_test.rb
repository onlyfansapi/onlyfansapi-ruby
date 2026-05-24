# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Users::RestrictTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.restrict.create("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Users::RestrictCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::RestrictCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::RestrictCreateResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.users.restrict.delete("user_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Users::RestrictDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Users::RestrictDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::Users::RestrictDeleteResponse::Data | nil
      }
    end
  end
end
