# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#set_custom_name
    class FanSetCustomNameParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute fan_id
      #
      #   @return [String]
      required :fan_id, String

      # @!attribute custom_name
      #   New Custom Name for a Fan. Send empty string (`""`) or `null` to clear out the
      #   custom name.
      #
      #   @return [String]
      required :custom_name, String

      # @!method initialize(account:, fan_id:, custom_name:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FanSetCustomNameParams} for more details.
      #
      #   @param account [String]
      #
      #   @param fan_id [String]
      #
      #   @param custom_name [String] New Custom Name for a Fan. Send empty string (`""`) or `null` to clear out the c
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
