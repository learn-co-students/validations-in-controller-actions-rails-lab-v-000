Author.create!(  name: "Ada Lovelace", email: "ada@the-history-of-programming.com" )
Author.create!(  name: "Douglas Adams", email: "restaurant@end-of-the-universe.com" )

Post.create!(
  title: "How to Invent Computer Science",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat.",
  category: "Non-Fiction"
)
Post.create!(
  title: "How to write a hit trilogy",
  content: "Make sure there are ample moments to laugh, but make them have an element of seriousness.  Also, make sure there are ample moments of seriousness, but make them have an element of humor in them.",
  category: "Fiction"
)
