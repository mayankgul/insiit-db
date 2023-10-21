##### Please note that you will need to fork this repository and then clone your own version of it on your computer, otherwise you will not be able to contribute.

### Installing Docker on your machine

If you already have Docker installed on your computer, please ignore this section.

- For Windows users: It is recommended that you install WSL 2 from [here](https://learn.microsoft.com/en-us/windows/wsl/install) before installing Docker as it is the preferred way to virtualize your containers.

You can download Docker Desktop from [here](https://www.docker.com/products/docker-desktop/).

Once you go through the installation process, you can verify if Docker has been installed successfully by opening a terminal and running:

```bash
docker --version
```

```bash
docker-compose --version
```

If you get an error, please refer to the documentation [here](https://docs.docker.com/).

### Setting up the database on a new machine

Fork the repository and clone it on your computer.

1. Run the following command in the root of the repository:

   ```bash
   docker-compose up -d
   ```

   This should now start the PostgreSQL server.

2. To connect to the database, you can use any IDE. Using [DataGrip](https://www.jetbrains.com/datagrip/) is recommended. Create a new connection. Set the host to `localhost`, the user and password to `postgres` and the port to `5050`. Leave the database field blank.

3. Create a new database called `insiit` from your SQL IDE.

4. Run all the `make_table.sql` files inside the tables directory on the database `insiit` from your SQL IDE.

5. Run all the `insert_values.sql` files inside the tables directory on the database `insiit` from your SQL IDE.

6. Run the following command in the root of the repository:

   ```bash
   docker-compose down
   ```

   This should now stop the PostgreSQL server.

### Running the database

Every time you wish to connect to the database, either from the API or for modifying tables, you will need to follow the following steps.

1. Run the following command in the root of the repository:

   ```bash
   docker-compose up -d
   ```

   This should now start the PostgreSQL server.

2. To connect to the database, you can use any IDE. Using [DataGrip](https://www.jetbrains.com/datagrip/) is recommended. Create a new connection. Set the host to `localhost`, the user and password to `postgres` and the port to `5050`. Leave the database field blank.

3. To stop the PostgreSQL server, run the following command in the root of the repository:

   ```bash
   docker-compose down
   ```

   This should now stop the PostgreSQL server.

### Pulling new changes

Any time you pull new changes from the repository, please check for any new tables. If there are any, make sure to run the `make_table.sql` and `insert_values.sql` files on the database `insiit` from your SQL IDE.

### Contributing

The `config.json` file provides the tables and their configurations in JSON format.

Inside the `tables` directory, you can find the SQL files that contain the queries used to create the tables, and also to insert dummy values into the table for testing.

Please make sure to update these files whenever you make any changes.
