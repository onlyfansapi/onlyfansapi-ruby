# typed: strong

module Onlyfans
  module Models
    module Posts
      class CommentListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Posts::CommentListParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :post_id

        # Number of comments to return (default = 10)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Number of comments to skip for pagination
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # Sort the returned comments (default = desc)
        sig do
          returns(T.nilable(Onlyfans::Posts::CommentListParams::Sort::OrSymbol))
        end
        attr_reader :sort

        sig do
          params(sort: Onlyfans::Posts::CommentListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        sig do
          params(
            account: String,
            post_id: String,
            limit: Integer,
            offset: Integer,
            sort: Onlyfans::Posts::CommentListParams::Sort::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          post_id:,
          # Number of comments to return (default = 10)
          limit: nil,
          # Number of comments to skip for pagination
          offset: nil,
          # Sort the returned comments (default = desc)
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              post_id: String,
              limit: Integer,
              offset: Integer,
              sort: Onlyfans::Posts::CommentListParams::Sort::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort the returned comments (default = desc)
        module Sort
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::Posts::CommentListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESC =
            T.let(:desc, Onlyfans::Posts::CommentListParams::Sort::TaggedSymbol)
          ASC =
            T.let(:asc, Onlyfans::Posts::CommentListParams::Sort::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Onlyfans::Posts::CommentListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
