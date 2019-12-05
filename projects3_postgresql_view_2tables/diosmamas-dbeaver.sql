CREATE TABLE flpedro.agents (
    id serial PRIMARY KEY,
    fName varchar(45) NOT NULL,
    lName varchar(45) NOT NULL,
    cNum varchar(45) NOT NULL
);

CREATE TABLE flpedro.customers (
    id serial PRIMARY KEY,
    fName varchar(45) NOT NULL,
    lName varchar(45) NOT NULL,
    cNum varchar(45) NOT NULL,
    typeCustomer varchar(45) NOT NULL,
    agent_id int NOT NULL,
    customerCol varchar(45) NOT NULL,
    FOREIGN KEY (agent_id) REFERENCES flpedro.agents (id)
);

CREATE TABLE flpedro.caterers (
    id serial PRIMARY KEY,
    catComp varchar(45) NOT NULL,
    package varchar(45) NOT NULL,
    cNum varchar(45) NOT NULL
);

CREATE TABLE flpedro.managers (
    id serial PRIMARY KEY,
    fName varchar(45) NOT NULL,
    lName varchar(45) NOT NULL,
    cNum varchar(45) NOT NULL,
    caterer_id int NOT NULL,
    FOREIGN KEY (caterer_id) REFERENCES flpedro.caterers (id)
);

CREATE TABLE flpedro.reservations (
    id serial PRIMARY KEY,
    dateR date NOT NULL,
    eventR varchar(45) NOT NULL,
    venueR varchar(45) NOT NULL,
    customer_id int NOT NULL,
    agent_id int NOT NULL,
    manager_id int NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES flpedro.customers (id),
    FOREIGN KEY (agent_id) REFERENCES flpedro.agents (id),
    FOREIGN KEY (manager_id) REFERENCES flpedro.managers (id)
    );

CREATE TABLE flpedro.photographers (
    id serial PRIMARY KEY,
    compP varchar(45) NOT NULL,
    nameP varchar(45) NOT NULL,
    package varchar(45) NOT NULL,
    photographerCol varchar(45) NOT NULL,
    cNum varchar(45) NOT NULL,
    manager_id int NOT NULL,
    FOREIGN KEY (manager_id) REFERENCES flpedro.managers (id)
);