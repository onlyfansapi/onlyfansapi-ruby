# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::AccountsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.accounts.list

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::AccountListResponseItem])
    end
  end

  def test_disconnect
    skip("Mock server tests are disabled")

    response = @only_fans_api.accounts.disconnect("laboriosam")

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::HashOf[Onlyfansapi::Internal::Type::Unknown])
    end
  end
end
