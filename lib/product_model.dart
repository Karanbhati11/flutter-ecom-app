class Product {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description
  });
}

List<Product> products = [
  Product(
    id: "1",
    title: "To Kill a Mockingbird",
    price: 10.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A novel by Harper Lee published in 1960, which was instantly successful, winning the Pulitzer Prize.",
  ),
  Product(
    id: "2",
    title: "Cant Hurt Me",
    price: 9.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/Cant Hurt Me.jpg",
    description: "A book by David Goggins that details his life story and offers motivational advice.",
  ),
  Product(
    id: "3",
    title: "Pride and Prejudice",
    price: 12.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A romantic novel of manners written by Jane Austen in 1813.",
  ),
  Product(
    id: "4",
    title: "The Great Gatsby",
    price: 8.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A 1925 novel written by American author F. Scott Fitzgerald.",
  ),
  Product(
    id: "5",
    title: "Moby Dick",
    price: 15.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "An 1851 novel by Herman Melville about the voyage of the whaling ship Pequod.",
  ),
  Product(
    id: "6",
    title: "War and Peace",
    price: 20.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A novel by Leo Tolstoy, first published from 1865 to 1869, which chronicles the French invasion of Russia.",
  ),
  Product(
    id: "7",
    title: "Crime and Punishment",
    price: 11.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A novel by Fyodor Dostoevsky, first published in 1866, that focuses on the mental anguish of a young man.",
  ),
  Product(
    id: "8",
    title: "The Catcher in the Rye",
    price: 10.49,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A novel by J.D. Salinger, partially published in serial form in 1945-1946 and as a novel in 1951.",
  ),
  Product(
    id: "9",
    title: "Brave New World",
    price: 9.49,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A dystopian social science fiction novel by Aldous Huxley, published in 1932.",
  ),
  Product(
    id: "10",
    title: "The Hobbit",
    price: 14.99,
    imageUrl: "gs://bookstore-7dea1.appspot.com/To Kill a Mockingbird.jpg",
    description: "A children's fantasy novel by J.R.R. Tolkien, published in 1937.",
  ),
];
