# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::AccountsTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.accounts.list

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::AccountListResponseItem])
    end
  end

  def test_disconnect
    skip("Mock server tests are disabled")

    response = @only_fans_api.accounts.disconnect("rerum")

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown])
    end
  end
end
