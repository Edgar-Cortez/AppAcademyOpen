require "byebug"

# 1
def reverser(str, &prc)
    new_str = prc.call(str.reverse)

    new_str
end

