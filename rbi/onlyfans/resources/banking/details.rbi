# typed: strong

module Onlyfans
  module Resources
    class Banking
      # Operations related to user banking details, payout methods, legal and tax
      # information, and account country settings.
      class Details
        # Returns the account owner's country details for banking, including country code,
        # name, whether the country has states and zip codes, payout eligibility, and W9
        # form availability.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse
          )
        end
        def retrieve_account_country_details(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Returns the account owner's bank payout details, including whether payout data
        # is filled, available payout methods with their descriptions, and required bank
        # fields.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse
          )
        end
        def retrieve_bank_details(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # If available, returns the account owner's DAC7 form information required for tax
        # reporting, including personal details, address, tax identification, country
        # information, and DAC7 status.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse
          )
        end
        def retrieve_dac7_form_details(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Returns the account owner's legal and tax status required for banking and payout
        # configuration, including W9 requirements, identity verification status, DAC7
        # compliance, and tax information.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse
          )
        end
        def retrieve_legal_and_tax_status(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Returns the account owner's legal form details for banking, including personal
        # or business name, address, social media links, date of birth, and available
        # document types for identity verification.
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse
          )
        end
        def retrieve_legal_form_details(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
