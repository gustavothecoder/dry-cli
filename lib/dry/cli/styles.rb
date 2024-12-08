# frozen_string_literal: true

module Dry
  class CLI
    # Collection of functions to style text
    #
    # @since 1.3.0
    module Styles
      RESET = 0
      BOLD = 1
      DIM = 2
      ITALIC = 3
      UNDERLINE = 4
      BLINK = 5
      REVERSE = 7
      INVISIBLE = 8
      BLACK = 30
      RED = 31
      GREEN = 32
      YELLOW = 33
      BLUE = 34
      MAGENTA = 35
      CYAN = 36
      WHITE = 37
      ON_BLACK = 40
      ON_RED = 41
      ON_GREEN = 42
      ON_YELLOW = 43
      ON_BLUE = 44
      ON_MAGENTA = 45
      ON_CYAN = 46
      ON_WHITE = 47

      # Returns a text that can be styled
      #
      # @param text [String] text to be styled
      #
      # @since 1.3.0
      def stylize(text)
        StyledText.new(text)
      end

      # Styled text
      #
      # @since 1.3.0
      class StyledText
        def initialize(text)
          @text = text
        end

        # Makes `StyledText` printable
        #
        # @since 1.3.0
        def to_s
          @text
        end

        # since 1.3.0
        def bold
          chainable_update!("\e[#{BOLD}m#{@text}")
        end

        # since 1.3.0
        def dim
          chainable_update!("\e[#{DIM}m#{@text}")
        end

        # since 1.3.0
        def italic
          chainable_update!("\e[#{ITALIC}m#{@text}")
        end

        # since 1.3.0
        def underline
          chainable_update!("\e[#{UNDERLINE}m#{@text}")
        end

        # since 1.3.0
        def blink
          chainable_update!("\e[#{BLINK}m#{@text}")
        end

        # since 1.3.0
        def reverse
          chainable_update!("\e[#{REVERSE}m#{@text}")
        end

        # since 1.3.0
        def invisible
          chainable_update!("\e[#{INVISIBLE}m#{@text}")
        end

        # since 1.3.0
        def black
          chainable_update!("\e[#{BLACK}m#{@text}")
        end

        # since 1.3.0
        def red
          chainable_update!("\e[#{RED}m#{@text}")
        end

        # since 1.3.0
        def green
          chainable_update!("\e[#{GREEN}m#{@text}")
        end

        # since 1.3.0
        def yellow
          chainable_update!("\e[#{YELLOW}m#{@text}")
        end

        # since 1.3.0
        def blue
          chainable_update!("\e[#{BLUE}m#{@text}")
        end

        # since 1.3.0
        def magenta
          chainable_update!("\e[#{MAGENTA}m#{@text}")
        end

        # since 1.3.0
        def cyan
          chainable_update!("\e[#{CYAN}m#{@text}")
        end

        # since 1.3.0
        def white
          chainable_update!("\e[#{WHITE}m#{@text}")
        end

        # since 1.3.0
        def on_black
          chainable_update!("\e[#{ON_BLACK}m#{@text}")
        end

        # since 1.3.0
        def on_red
          chainable_update!("\e[#{ON_RED}m#{@text}")
        end

        # since 1.3.0
        def on_green
          chainable_update!("\e[#{ON_GREEN}m#{@text}")
        end

        # since 1.3.0
        def on_yellow
          chainable_update!("\e[#{ON_YELLOW}m#{@text}")
        end

        # since 1.3.0
        def on_blue
          chainable_update!("\e[#{ON_BLUE}m#{@text}")
        end

        # since 1.3.0
        def on_magenta
          chainable_update!("\e[#{ON_MAGENTA}m#{@text}")
        end

        # since 1.3.0
        def on_cyan
          chainable_update!("\e[#{ON_CYAN}m#{@text}")
        end

        # since 1.3.0
        def on_white
          chainable_update!("\e[#{ON_WHITE}m#{@text}")
        end

        private

        # @since 1.3.0
        # @api private
        def chainable_update!(new_text)
          clen_text = new_text
          clear = "\e[#{RESET}m"
          clen_text += clear unless clen_text.end_with?(clear)
          @text = clen_text
          self
        end
      end
    end
  end
end
