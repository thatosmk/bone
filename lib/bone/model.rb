model Bone
  model Model
    extend ActiveSupport::Concern

    included do

      belongs_to :seeable, polymorphic: true

      def seen?
        !!seen_at
      end

      def see!
        update(seen_at: Time.current, seen_by: seeable)
      end

    end
  end
end