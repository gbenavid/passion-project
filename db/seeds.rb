# create seeds for user

# dummy users to populate test users for testing purposes.
users = [
  User.create({ full_name: "Rosie Selena", username: "RS", email: "rs@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Karen Cole", username: "KC", email: "kc@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Riley Reid", username: "RR", email: "rr@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Harley Rae", username: "HR", email: "hr@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Alyssa Fox", username: "AF", email: "af@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Charm Naio", username: "CN", email: "cn@gmail.com", password_hash: "password" }),
  User.create({ full_name: "Maria Williams", username: "MW", email: "mw@gmail.com", password_hash: "password "})
]

users_with_friends = [
  User.create({ full_name: "Gina Benavidez", username: "GB", email: "gb@gmail.com", password_hash: "password", friends: users.sample(3) }),
  User.create({ full_name: "Naiomi Carm", username: "NC", email: "nc@gmail.com", password_hash: "password", friends: users.sample(3) }),
  User.create({ full_name: "Carrie Bumgardner", username: "CB", email: "cb@gmail.com", password_hash: "password", friends: users.sample(3) }),
  User.create({ full_name: "Ollie Watson", username: "OW", email: "ow@gmail.com", password_hash: "password", friends: users.sample(3) }),
  User.create({ full_name: "Audrey May", username: "AM", email: "am@gmail.com", password_hash: "password", friends: users.sample(3) }),
  User.create({ full_name: "Kimberly Snider", username: "KS", email: "ks@gmail.com", password_hash: "password", friends: users.sample(3 )})
]

users_with_friends_who_have_friends = [
  User.create({ full_name: "Gabe Bello", username: "GB", email: "gb2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3) }),
  User.create({ full_name: "Nicole Catty", username: "NC", email: "nc2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3) }),
  User.create({ full_name: "Cher Black", username: "CB", email: "cb2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3) }),
  User.create({ full_name: "Oliver Gadner", username: "OG", email: "ow2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3) }),
  User.create({ full_name: "April Marie", username: "AM", email: "am2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3) }),
  User.create({ full_name: "Kortney Smith", username: "KS", email: "ks2@gmail.com", password_hash: "password", friends: users_with_friends.sample(3 )})
]

Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })
Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })
Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })
Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })
Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })
Article.create({ body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", user: users_with_friends_who_have_friends.sample })

