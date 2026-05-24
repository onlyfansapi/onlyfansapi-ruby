# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfansapi::Test::Resources::Banking::DetailsTest < Onlyfansapi::Test::ResourceTest
  def test_retrieve_account_country_details
    skip("Mock server tests are disabled")

    response = @onlyfansapi.banking.details.retrieve_account_country_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta | nil,
        data: Onlyfansapi::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_bank_details
    skip("Mock server tests are disabled")

    response = @onlyfansapi.banking.details.retrieve_bank_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Meta | nil,
        data: Onlyfansapi::Models::Banking::DetailRetrieveBankDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_dac7_form_details
    skip("Mock server tests are disabled")

    response = @onlyfansapi.banking.details.retrieve_dac7_form_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta | nil,
        data: Onlyfansapi::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_legal_and_tax_status
    skip("Mock server tests are disabled")

    response = @onlyfansapi.banking.details.retrieve_legal_and_tax_status("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta | nil,
        data: Onlyfansapi::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data | nil
      }
    end
  end

  def test_retrieve_legal_form_details
    skip("Mock server tests are disabled")

    response = @onlyfansapi.banking.details.retrieve_legal_form_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::Banking::DetailRetrieveLegalFormDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta | nil,
        data: Onlyfansapi::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data | nil
      }
    end
  end
end
