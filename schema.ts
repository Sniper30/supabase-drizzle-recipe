import { pgTable, serial, text, varchar,pgEnum } from "drizzle-orm/pg-core";
export const status = pgEnum('status',["inProgress","done","started"])
export const todo = pgTable('todo', {
  id: serial('id').primaryKey(),
  name: text('name'),
  status: status('status'),
  madeby: text('madeby')
});