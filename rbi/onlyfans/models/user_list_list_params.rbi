# typed: strong

module Onlyfans
  module Models
    class UserListListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::UserListListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # How many results to return in the request. Max. 50 user lists. Must be at
      # least 10. Must not be greater than 50.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :offset

      # How to return the results. `queue` returns the user lists that are available for
      # Mass-Messaging.
      sig { returns(T.nilable(Onlyfans::UserListListParams::View::OrSymbol)) }
      attr_reader :view

      sig { params(view: Onlyfans::UserListListParams::View::OrSymbol).void }
      attr_writer :view

      sig do
        params(
          account: String,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          view: Onlyfans::UserListListParams::View::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # How many results to return in the request. Max. 50 user lists. Must be at
        # least 10. Must not be greater than 50.
        limit: nil,
        # Must be at least 0.
        offset: nil,
        # How to return the results. `queue` returns the user lists that are available for
        # Mass-Messaging.
        view: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: T.nilable(Integer),
            offset: T.nilable(Integer),
            view: Onlyfans::UserListListParams::View::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # How to return the results. `queue` returns the user lists that are available for
      # Mass-Messaging.
      module View
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::UserListListParams::View) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUE = T.let(:queue, Onlyfans::UserListListParams::View::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::UserListListParams::View::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
