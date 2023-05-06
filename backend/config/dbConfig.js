const testDB = {
  host: "localhost",
  user: "root",
  password: "root12345",
  database: "test",
};

const productionDB = {
  host: "eu-cdbr-west-03.cleardb.net",
  user: "b2de911c23da88",
  password: "24635e85",
  database: "heroku_7856f26f9d49a1e",
  dialect: "mysql",
};

const dockerDB = {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
};

// mysql://b2de911c23da88:24635e85@eu-cdbr-west-03.cleardb.net/heroku_7856f26f9d49a1e?

module.exports = { connectionInfo: dockerDB };
