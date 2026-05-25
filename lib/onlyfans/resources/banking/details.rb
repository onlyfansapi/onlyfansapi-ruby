# frozen_string_literal: true

module Onlyfans
  module Resources
    class Banking
      # Operations related to user banking details, payout methods, legal and tax
      # information, and account country settings.
      class Details
        # Returns the account owner's country details for banking, including country code,
        # name, whether the country has states and zip codes, payout eligibility, and W9
        # form availability.
        #
        # @overload retrieve_account_country_details(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse]
        #
        # @see Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsParams
        def retrieve_account_country_details(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/banking/details/account-country", account],
            model: Onlyfans::Models::Banking::DetailRetrieveAccountCountryDetailsResponse,
            options: params[:request_options]
          )
        end

        # Returns the account owner's bank payout details, including whether payout data
        # is filled, available payout methods with their descriptions, and required bank
        # fields.
        #
        # @overload retrieve_bank_details(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse]
        #
        # @see Onlyfans::Models::Banking::DetailRetrieveBankDetailsParams
        def retrieve_bank_details(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/banking/details/bank", account],
            model: Onlyfans::Models::Banking::DetailRetrieveBankDetailsResponse,
            options: params[:request_options]
          )
        end

        # If available, returns the account owner's DAC7 form information required for tax
        # reporting, including personal details, address, tax identification, country
        # information, and DAC7 status.
        #
        # @overload retrieve_dac7_form_details(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse]
        #
        # @see Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsParams
        def retrieve_dac7_form_details(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/banking/details/dac7-form", account],
            model: Onlyfans::Models::Banking::DetailRetrieveDac7FormDetailsResponse,
            options: params[:request_options]
          )
        end

        # Returns the account owner's legal and tax status required for banking and payout
        # configuration, including W9 requirements, identity verification status, DAC7
        # compliance, and tax information.
        #
        # @overload retrieve_legal_and_tax_status(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse]
        #
        # @see Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusParams
        def retrieve_legal_and_tax_status(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/banking/details/legal-info", account],
            model: Onlyfans::Models::Banking::DetailRetrieveLegalAndTaxStatusResponse,
            options: params[:request_options]
          )
        end

        # Returns the account owner's legal form details for banking, including personal
        # or business name, address, social media links, date of birth, and available
        # document types for identity verification.
        #
        # @overload retrieve_legal_form_details(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse]
        #
        # @see Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsParams
        def retrieve_legal_form_details(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/banking/details/legal-form", account],
            model: Onlyfans::Models::Banking::DetailRetrieveLegalFormDetailsResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
