# Switch ETL

This repository contains a custom Extract, Load, Transform (ELT) project that utilizes Docker and PostgreSQL to demonstrate an ELT process specifically tailored for switch data. The project focuses on processing and analyzing information related to switches used in mechanical keyboards.

### Data

The primary dataset consists of detailed information about various switches used in mechanical keyboards. This includes attributes such as switch name, manufacturer, spring force, stem type, stem material, top housing material, bottom housing material, ownership status, and user ratings.

### Transformation Purpose

The main objective of the transformation process is to identify the best-rated switch characteristics based on user ratings. By analyzing the ratings associated with different combinations of switch attributes (such as spring force, stem type, stem material, etc.), the transformation aims to determine the most desirable characteristics among users. This information is valuable for keyboard enthusiasts and manufacturers alike, as it can inform future switch designs and purchasing decisions.

### Key Features

- Dockerized Environment: Utilizes Docker containers to create a consistent and portable environment for running the ELT process.
- PostgreSQL Database: Demonstrates the use of PostgreSQL as the database for storing and processing switch data.
- Custom ELT Pipeline: Implements a custom ELT pipeline for extracting data, loading it into the database, and performing transformations specific to switch information.

### Getting Started

1. Ensure you have Docker and Docker Compose installed on your machine.
2. Clone this repository.
3. Navigate to the repository directory and run `docker-compose up`.
4. Once all containers are up and running, the ELT process will start automatically.
5. After the ELT process completes, you can access the source and destination PostgreSQL databases on ports 5433 and 5434, respectively.
