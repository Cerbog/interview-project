require("dotenv").config();
const express = require("express");
const session = require('express-session')
const bodyParser = require("body-parser");
const mysql = require("mysql");

const passport = require("passport");
const GoogleStrategy = require("passport-google-oauth2").Strategy;

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

app.use(session({
   secret: process.env.SECRET,
   resave: false,
   saveUninitialized: false
}));

app.use(passport.initialize());
app.use(passport.session());

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  res.header("Access-Control-Allow-Methods", "*");
  next();
});

function isLoggedIn (req, res, next){
   req.user? next() : res.sendStatus(401);
}

const mysqlConnection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: process.env.MYSQL_PWD,
  database: "liceu",
  multipleStatements: true,
});
mysqlConnection.connect((err) => {
  if (!err) {
    console.log("DB connection succeded");
  } else {
    console.log(
      "DB connection failed \n Error: " + JSON.stringify(err, undefined, 2)
    );
  }
});

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: "http://localhost:3500/auth/google/callback",
      passReqToCallback: true
    },
    function (request, accessToken, refreshToken, profile, done) {
      console.log('am trecut pe aici', profile.id, profile);
      mysqlConnection.query("SELECT * FROM users WHERE googleId = ? OR email = ?", [profile.id, profile.email], function (err, result, fields) {
          if (!err) {
            console.log(result, result.length);
            if (result.length>0) {
               console.log('intru la return profile');
               return done(err, profile);
            } else {
               console.log('intru la insert');
               mysqlConnection.query("INSERT INTO users (email, googleId) VALUES (?, ?)", [profile.email, profile.id], function(err, result, fields){
                  console.log(result, profile);
                  return done(err, profile)
               })
            }
         } else {
            console.log(err);
            return done(err,null)
         }
        }
      );
    }
  )
);

passport.serializeUser(function (user, done) {
  done(null, user.id);
});

passport.deserializeUser(function (id, done) {
  mysqlConnection.query(
    "SELECT * FROM users WHERE googleId = ?",
    [id],
    function (err, result, fields) {
      done(err, result);
    }
  );
});

// ------------------------------------------------------ GET ------------------------------------------------------------------

app.get("/elevi", function (req, res) {
  //toti elevii
  mysqlConnection.query(
    "SELECT e.id, e.nume, prenume, dn, adresa, tel_pr, tatal, mama, nr_matricol, gen, c.nume AS nume_clasa, c.an FROM elevi AS e JOIN clase_elevi AS ce ON e.id = ce.elev LEFT JOIN clase AS c ON ce.clasa = c.id",
    function (err, result, fields) {
      if (!err) {
        res.send(result);
      } else {
        console.log(err);
      }
    }
  );
});

app.get("/auth/google", passport.authenticate('google', {scope: ['email', 'profile']}), function(req, res){
   console.log(req)
});

app.get("/auth/google/callback", passport.authenticate('google', {
   successRedirect: '/autentificat',
   failureRedirect : 'http://localhost:3000/src/pages/login'
}));

app.get("/autentificat", isLoggedIn, (req, res) =>{
   res.redirect('http://localhost:3000/src/pages/home')
});

app.get("/logout", function(req, res, next){
   req.logout(function(err){
      if(err){return next(err);}
      req.session.destroy();
      res.redirect('http://localhost:3000/src/pages/login');
   });
})

// app.get("/elevi/:id", function(req, res){  //elevii dupa id
//    let uid = req.params.id;
//    mysqlConnection.query('SELECT e.id, e.nume, prenume, dn, adresa, tel_pr, tatal, mama, nr_matricol, gen, c.nume AS nume_clasa, c.an FROM elevi AS e JOIN clase_elevi AS ce ON e.id = ce.elev LEFT JOIN clase AS c ON ce.clasa = c.id WHERE e.id = ?', [uid], function(err, result, fields){
//       if(!err){
//          res.send(result);
//       }else{
//          console.log(err);
//       }
//    });
// });
app.get("/elevi/filter", function (req, res) {
  //elevii dupa nr matricol
  let key = Object.keys(req.query);
  let value = Object.values(req.query);

  if (key.length > 1) {
  } else if (key.length == 1) {
    mysqlConnection.query(
      `SELECT e.id, e.nume, prenume, dn, adresa, tel_pr, tatal, mama, nr_matricol, gen, c.nume AS nume_clasa, c.an FROM elevi AS e JOIN clase_elevi AS ce ON e.id = ce.elev LEFT JOIN clase AS c ON ce.clasa = c.id WHERE e.${key[0]} = ?`,
      [value[0]],
      function (err, result, fields) {
        if (!err) {
          res.send(result);
        } else {
          console.log(err);
        }
      }
    );
  }
});

app.get("/profesori", function (req, res) {
  // toti profesorii
  mysqlConnection.query(
    "SELECT p.id, p.nume, prenume, adresa, telefon, an, c.nume AS nume_clasa, GROUP_CONCAT(disciplina) AS discipline, c.diriginte FROM profesori AS p LEFT JOIN clase AS c ON p.id = c.diriginte JOIN profesori_discipline AS pd WHERE p.id = pd.profesor GROUP BY pd.profesor",
    function (err, result, fields) {
      if (!err) {
        res.send(result);
      } else {
        console.log(err);
      }
    }
  );
});

app.get("/profesori/:id", function (req, res) {
  // profesorii dupa id
  let uid = req.params.id;
  mysqlConnection.query(
    "SELECT p.id, p.nume, prenume, adresa, telefon, an, c.nume AS nume_clasa, GROUP_CONCAT(disciplina) AS discipline, c.diriginte FROM profesori AS p LEFT JOIN clase AS c ON p.id = c.diriginte JOIN profesori_discipline AS pd WHERE p.id = pd.profesor AND p.id = ?  GROUP BY pd.profesor",
    [uid],
    function (err, result, fields) {
      if (!err) {
        res.send(result);
      } else {
        console.log(err);
      }
    }
  );
});

app.get("/catalog", function (req, res) {
  // toti elevii pe clase
  mysqlConnection.query(
    "SELECT * FROM catalog_clase",
    function (err, result, fields) {
      if (!err) {
        res.send(result);
      } else {
        console.log(err);
      }
    }
  );
});

app.get("/note", function (req, res) {
  // toate notele tuturor elevilor
  mysqlConnection.query("SELECT * FROM note", function (err, result, fields) {
    if (!err) {
      res.send(result);
    } else {
      console.log(err);
    }
  });
});

app.get("/note/filter", function (req, res) {
  // note dupa: elev, materie, semestru, nota
  let key = Object.keys(req.query);
  let value = Object.values(req.query);
  if (key.length == 1) {
    mysqlConnection.query(
      `SELECT note.id, e.nume, e.prenume, e.nr_matricol, elev, materia, semestrul, nota, data FROM note LEFT JOIN elevi AS e ON elev = e.id WHERE ${key[0]} = ? ORDER BY semestrul, materia`,
      [value[0]],
      function (err, result, fields) {
        if (!err) {
          res.send(result);
        } else {
          console.log(err);
        }
      }
    );
  } else if (key.length == 2) {
    mysqlConnection.query(
      `SELECT note.id, e.nume, e.prenume, e.nr_matricol, elev, materia, semestrul, nota, data FROM note LEFT JOIN elevi AS e ON elev = e.id WHERE ${key[0]} = ? AND ${key[1]} = ? ORDER BY semestrul, materia`,
      [...value],
      function (err, result, fields) {
        if (!err) {
          res.send(result);
        } else {
          console.log(err);
        }
      }
    );
  } else if (key.length == 3) {
    mysqlConnection.query(
      `SELECT note.id, e.nume, e.prenume, e.nr_matricol, elev, materia, semestrul, nota, data FROM note LEFT JOIN elevi AS e ON elev = e.id WHERE ${key[0]} = ? AND ${key[1]} = ? AND ${key[2]} = ? ORDER BY semestrul, materia`,
      [...value],
      function (err, result, fields) {
        if (!err) {
          res.send(result);
        } else {
          console.log(err);
        }
      }
    );
  }
});

// ------------------------------------------------------ POST ------------------------------------------------------------------

app.post("/", function (req, res) {
  // res.json(elevi);
  console.log(req.body.proba);
  // res.redirect("http://localhost:3000/");  //redirect from be to fe !!!!
});

app.post("/login", function (req, res) {
  console.log(req.body);
  res.redirect(req.headers.referer + "src/pages/home.html");
});

app.post("/register", function (req, res) {
  console.log(req.body);
  res.redirect(req.headers.referer + "src/pages/home.html");
});

// ------------------------------------------------------ PUT ------------------------------------------------------------------

app.post("/note", function (req, res) {
  console.log("body", req.body);
  if (req.body._method == "put") {
    mysqlConnection.query(
      `UPDATE note SET materia = ?, semestrul = ?, nota= ? WHERE id = ?`,
      [req.body.disciplina, req.body.semestrul, req.body.nota, req.body.n_id],
      function (err, result, fields) {
        if (!err) {
          console.log({ result });
          res.redirect(req.headers.referer + "src/pages/catalog.html");
        } else {
          console.log(err);
        }
      }
    );
  } else if (req.body._method == "post") {
    console.log("post");
    mysqlConnection.query(
      `INSERT INTO note (elev, materia, semestrul, nota) VALUES (?, ?, ?, ?);`,
      [req.body.n_id, req.body.disciplina, req.body.semestrul, req.body.nota],
      function (err, result, fields) {
        if (!err) {
          console.log({ result });
          res.redirect(req.headers.referer + "src/pages/catalog.html"); //redirect from where it was called
        } else {
          console.log(err);
        }
      }
    );
  }
});

// ------------------------------------------------------ DELETE ------------------------------------------------------------------
app.delete("/note/:id", function (req, res) {
  // delete pe baza de id al notelor
  let id_nota = req.params.id;
  console.log(id_nota);

  mysqlConnection.query(
    `DELETE from note WHERE note.id = ?`,
    [id_nota],
    function (err, result) {
      if (!err) {
        res.send(result);
      } else {
        console.log(err);
      }
    }
  );
});

app.listen(3500, () => console.log(`Server started on port`));
