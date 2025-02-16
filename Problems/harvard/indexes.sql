CREATE INDEX "search_student_course_semester" ON "courses" ("title", "semester");
CREATE INDEX "search_student_id" ON "students" ("id"); 
CREATE INDEX "search_enrollments_course_id" ON "enrollments" ("course_id");
CREATE INDEX "search_course_depart" ON "courses" ("department", "number");
CREATE INDEX "search_enrollments_student_id" ON "enrollments" ("student_id");
CREATE INDEX "search_student_course_semester_id" ON "courses" ("id", "semester");
CREATE INDEX "search_student__satisfies_course_id" ON "satisfies" ("course_id");
--DROP INDEX "search_course_id";
--EXPLAIN QUERY PLAN
