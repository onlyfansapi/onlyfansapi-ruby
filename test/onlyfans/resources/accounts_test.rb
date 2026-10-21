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

    response = @only_fans_api.accounts.disconnect("acct_992d030de9f849e59e7eb74cc0c77f12")

    assert_pattern do
      response => ^(Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown])
    end
  end
end
