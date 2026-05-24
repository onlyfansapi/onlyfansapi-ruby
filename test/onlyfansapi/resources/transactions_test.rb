# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::TransactionsTest < Onlyfansapi::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.transactions.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::TransactionListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::TransactionListResponse::Meta | nil,
        _pagination: Onlyfansapi::Models::TransactionListResponse::Pagination | nil,
        data: Onlyfansapi::Models::TransactionListResponse::Data | nil
      }
    end
  end
end
