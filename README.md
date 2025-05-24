# Colloidal Gold Strip Management
A Node.js backend project with JWT authentication, database access, and document generation features.

Managing Colloidal Gold Strips from different vendors.

- Express for web, JWT for auth. docxtemplater for docs. 
- Dart client call APIs.
- code-generator, tests, check utils folder.

## Features

- **JWT Authentication**: Secure API endpoints using JSON Web Tokens.
- **Express Server**: RESTful API server using Express.
- **Database Access**: MySQL database integration via `mysql2` and `sequelize`.
- **Logging**: Request and application logging with `morgan` and `log4js`.
- **Document Generation**: Generate DOCX files using `docxtemplater` and `pizzip`.
- **RBAC**: Role-based access control APIs.
- **Redis**: Caching and session management.
- **CORS**: Cross-origin resource sharing enabled.

## Project Structure

```
.
├── authServer.js
├── dbServer.js
├── generateAccessToken.js
├── makesecrets.js
├── mserver.js
├── validateToken.js
├── api/
├── dao/
├── data/
├── lib/
├── sql/
├── template/
├── temp/
├── utils/
├── web/
├── web2/
├── package.json
└── README.md
```

## Scripts

- `npm run devserver` — Start the authentication server with nodemon.
- `npm run valiserver` — Start the token validation server with nodemon.
- `npm run dbServer` — Start the database server with nodemon.
- `npm run rediscli` — Launch Redis CLI connected to the configured host.

## Configuration

- Environment variables are loaded from `.env`.
- Logging configuration is in `lib/logger.json`.
- Database and other settings are in `lib/configure.js`.

## API Endpoints

- Health check: `GET /_health`
- User, role, and RBAC APIs: see `api/` directory.

## Dependencies

See [package.json](package.json) for the full list. Key dependencies include:

- express
- jsonwebtoken
- mysql2
- sequelize
- docxtemplater
- pizzip
- log4js
- morgan
- redis

## License

MIT

---

For more details, see the source code and comments in each file.
