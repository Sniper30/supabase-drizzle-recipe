DO $$ BEGIN
 CREATE TYPE "status" AS ENUM('inProgress', 'done', 'started');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
ALTER TABLE "todo" ADD COLUMN "name" text;--> statement-breakpoint
ALTER TABLE "todo" ADD COLUMN "status" "status";--> statement-breakpoint
ALTER TABLE "todo" ADD COLUMN "madeby" text;--> statement-breakpoint
ALTER TABLE "todo" DROP COLUMN IF EXISTS "full_name";--> statement-breakpoint
ALTER TABLE "todo" DROP COLUMN IF EXISTS "phone";