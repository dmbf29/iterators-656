musicians = %w[derek allen viddy cheri mew]
# index         0      1     2     3    4
# CRUD
# Create
musicians << 'daniel'

# Read
# 'string'.split('')
# array[index]
musicians[0]
musicians[-2]
musicians[0..2]
musicians.index('viddy')
musicians.length
musicians.size
# p musicians.count('mew')

# Update
# array[index] = new_value
musicians[0] = 'quill'

# Delete
musicians.delete('quill')
musicians.delete_at(0)
