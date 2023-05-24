# interview-project
Creating an application with backend API (mysql database) and frontend using it that simulate an highschool structure
Shoul you make the application work, you first have to import `liceu.sql` DB, and then reconfigure the app.js file so you can connect
to the DB using your own host, user and password.

The backend runs on port 3500, thats how the front-end comunicates with it
The frontend runs on port 3000. If you want to change this ports, be consistent, otherwise it wont work properly.

How the API works

For the first release, some endpoints and implementations are available, as follows:
- localhost:3500/elevi ->returns an array of JSON objects with the full data from elevi table in the DB
- /elevi/filter, followed by one query parameter - can filter elevi by any column name in the elevi table
   ex: localhost:3500/elevi/filter?id=1 - returns the elevi table entry with the id = 1
                           /filter?nr_matricol=4494 - returns the elevi table entry with the nr_matricol column value = 4494
- /profesori -> returns an array of JSON objects with the full data from profesori table in the DB
- /profesori/id -> returns the profesori table entry with the given id
  ex: localhost:3500/profesori/4 - returns the profesori table entry with the id = 4
- /catalog -> returns an array of all the catalog_clase view, that is join of multiple tabels with info about the name of the student,
  name of the clasa where he goes, his 'diriginte', the profile of the class, and the subjects studied
- /note -> returns all note entries
- /note/filter -> as the filter above, but here you can ad up to 3 queries, separated with '&' to select the desired entry
  ex: localhost:3500/note/filter?materia=Biologie&elev=1&nota=8 -> returns the note table entry that shows the elev with id = 1, that
  has nota = 8 at Biologie subject

You can modify an entry in the note table through the frontend of the application, in the 'Catalog' sidebar tab. There, select the class,
then the student. Hit the edit button and there you can change the 'nota', 'materia', or 'Disciplina', then hit 'Submit'.

You can add a grade - 'nota' by clicking the plus sign in the table head and providing the input values.

You can delete a grade by clicking the delete icon.
