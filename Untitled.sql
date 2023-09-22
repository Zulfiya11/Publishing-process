CREATE TABLE "author" (
  "author_id" [pk],
  "ssn" lastname,
  "firstname" phone,
  "address" city,
  "state" zip
);

CREATE TABLE "bookauthor" (
  "author_id" [pk][fk],
  "isbn" [pk][fk],
  "author_order" royaltyshare
);

CREATE TABLE "book" (
  "isbn" [pk],
  "title" type,
  "pub_id" [fk],
  "price" advance,
  "ytd_sales" pubdate
);

CREATE TABLE "publisher" (
  "pub_id" [pk],
  "name" address,
  "city" state
);

CREATE TABLE "bookeditor" (
  "editor_id" [pk][fk],
  "isbn" [pk][fk]
);

CREATE TABLE "editor" (
  "editor_id" [pk],
  "ssn" lastname,
  "firtsname" phone,
  "editor_position" salary
);

ALTER TABLE "bookauthor" ADD FOREIGN KEY ("isbn") REFERENCES "author" ("ssn");

ALTER TABLE "bookauthor" ADD FOREIGN KEY ("isbn") REFERENCES "book" ("title");

ALTER TABLE "book" ADD FOREIGN KEY ("ytd_sales") REFERENCES "publisher" ("pub_id");

ALTER TABLE "bookeditor" ADD FOREIGN KEY ("editor_id") REFERENCES "book" ("isbn");

ALTER TABLE "bookeditor" ADD FOREIGN KEY ("isbn") REFERENCES "editor" ("editor_id");
