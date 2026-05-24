# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::AccountsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @onlyfansapi.accounts.list

    assert_pattern do
      response => ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown])
    end
  end

  def test_disconnect
    skip("Mock server tests are disabled")

    response = @onlyfansapi.accounts.disconnect("aut")

    assert_pattern do
      response => Onlyfansapi::Internal::Type::Unknown
    end
  end
end
