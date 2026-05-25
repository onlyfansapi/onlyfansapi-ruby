# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::TransactionsTest < Onlyfans::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.transactions.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::TransactionListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::TransactionListResponse::Meta | nil,
        _pagination: Onlyfans::Models::TransactionListResponse::Pagination | nil,
        data: Onlyfans::Models::TransactionListResponse::Data | nil
      }
    end
  end
end
