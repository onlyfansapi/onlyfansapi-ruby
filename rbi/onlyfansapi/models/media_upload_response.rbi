# typed: strong

module Onlyfansapi
  module Models
    class MediaUploadResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::MediaUploadResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::MediaUploadResponse::Additional))
      end
      attr_reader :additional

      sig do
        params(
          additional:
            Onlyfansapi::Models::MediaUploadResponse::Additional::OrHash
        ).void
      end
      attr_writer :additional

      sig { returns(T.nilable(String)) }
      attr_reader :extra

      sig { params(extra: String).void }
      attr_writer :extra

      sig { returns(T.nilable(String)) }
      attr_reader :file_name

      sig { params(file_name: String).void }
      attr_writer :file_name

      sig { returns(T.nilable(String)) }
      attr_reader :host

      sig { params(host: String).void }
      attr_writer :host

      sig { returns(T.nilable(String)) }
      attr_reader :prefixed_id

      sig { params(prefixed_id: String).void }
      attr_writer :prefixed_id

      sig { returns(T.nilable(String)) }
      attr_reader :process_id

      sig { params(process_id: String).void }
      attr_writer :process_id

      sig { returns(T.nilable(String)) }
      attr_reader :source_url

      sig { params(source_url: String).void }
      attr_writer :source_url

      sig do
        returns(
          T.nilable(T::Array[Onlyfansapi::Models::MediaUploadResponse::Thumb])
        )
      end
      attr_reader :thumbs

      sig do
        params(
          thumbs:
            T::Array[Onlyfansapi::Models::MediaUploadResponse::Thumb::OrHash]
        ).void
      end
      attr_writer :thumbs

      sig do
        params(
          additional:
            Onlyfansapi::Models::MediaUploadResponse::Additional::OrHash,
          extra: String,
          file_name: String,
          host: String,
          prefixed_id: String,
          process_id: String,
          source_url: String,
          thumbs:
            T::Array[Onlyfansapi::Models::MediaUploadResponse::Thumb::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        additional: nil,
        extra: nil,
        file_name: nil,
        host: nil,
        prefixed_id: nil,
        process_id: nil,
        source_url: nil,
        thumbs: nil
      )
      end

      sig do
        override.returns(
          {
            additional: Onlyfansapi::Models::MediaUploadResponse::Additional,
            extra: String,
            file_name: String,
            host: String,
            prefixed_id: String,
            process_id: String,
            source_url: String,
            thumbs: T::Array[Onlyfansapi::Models::MediaUploadResponse::Thumb]
          }
        )
      end
      def to_hash
      end

      class Additional < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::MediaUploadResponse::Additional,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :user

        sig { params(user: String).void }
        attr_writer :user

        sig { params(user: String).returns(T.attached_class) }
        def self.new(user: nil)
        end

        sig { override.returns({ user: String }) }
        def to_hash
        end
      end

      class Thumb < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::MediaUploadResponse::Thumb,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { params(id: Integer, url: String).returns(T.attached_class) }
        def self.new(id: nil, url: nil)
        end

        sig { override.returns({ id: Integer, url: String }) }
        def to_hash
        end
      end
    end
  end
end
