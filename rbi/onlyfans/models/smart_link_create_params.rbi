# typed: strong

module Onlyfans
  module Models
    class SmartLinkCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::SmartLinkCreateParams, Onlyfans::Internal::AnyHash)
        end

      # The prefixed ID of the account to create the Smart Link for
      sig { returns(String) }
      attr_accessor :account_id

      # The type of Smart Link to create
      sig { returns(Onlyfans::SmartLinkCreateParams::LinkType::OrSymbol) }
      attr_accessor :link_type

      # The name of the Smart Link
      sig { returns(String) }
      attr_accessor :name

      # The number of free trial days (required if `link_type` is `free_trial`). Must be
      # between 1 and 360.
      sig { returns(T.nilable(Integer)) }
      attr_reader :free_trial_days

      sig { params(free_trial_days: Integer).void }
      attr_writer :free_trial_days

      sig do
        params(
          account_id: String,
          link_type: Onlyfans::SmartLinkCreateParams::LinkType::OrSymbol,
          name: String,
          free_trial_days: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The prefixed ID of the account to create the Smart Link for
        account_id:,
        # The type of Smart Link to create
        link_type:,
        # The name of the Smart Link
        name:,
        # The number of free trial days (required if `link_type` is `free_trial`). Must be
        # between 1 and 360.
        free_trial_days: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            link_type: Onlyfans::SmartLinkCreateParams::LinkType::OrSymbol,
            name: String,
            free_trial_days: Integer,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of Smart Link to create
      module LinkType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::SmartLinkCreateParams::LinkType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FREE_TRIAL =
          T.let(
            :free_trial,
            Onlyfans::SmartLinkCreateParams::LinkType::TaggedSymbol
          )
        TRACKING_LINK =
          T.let(
            :tracking_link,
            Onlyfans::SmartLinkCreateParams::LinkType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::SmartLinkCreateParams::LinkType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
