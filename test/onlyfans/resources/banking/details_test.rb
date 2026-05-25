# frozen_string_literal: true

require_relative "../../test_helper"

class Onlyfans::Test::Resources::Banking::DetailsTest < Onlyfans::Test::ResourceTest
  def test_retrieve_account_country_details
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.details.retrieve_account_country_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Meta | nil,
        data: Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_bank_details
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.details.retrieve_bank_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Meta | nil,
        data: Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_dac7_form_details
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.details.retrieve_dac7_form_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Meta | nil,
        data: Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse::Data | nil
      }
    end
  end

  def test_retrieve_legal_and_tax_status
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.details.retrieve_legal_and_tax_status("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Meta | nil,
        data: Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse::Data | nil
      }
    end
  end

  def test_retrieve_legal_form_details
    skip("Mock server tests are disabled")

    response = @only_fans_api.banking.details.retrieve_legal_form_details("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Meta | nil,
        data: Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse::Data | nil
      }
    end
  end
end
