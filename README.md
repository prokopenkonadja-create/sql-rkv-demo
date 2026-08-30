# SQL Demo Relationel databasestruktur
  **Udvikler:** Nadiia Prokopenko
  
  ## Projektoversigt
  Dette repository indeholder et relationelt databaseskema (DDL & DML). Det forbinder mine praktiske projekter med mine læringsforløb i HTML/CSS/JS, C# og SQL ved hjælp af **Primary** og **Foreign Keys**.

  ---

  ## Databasestruktur
  * **'technologies'**: Gemmer technologier og kategorier ('tech_id', 'tech_name', 'category').
  * **'projects'**: Gemmer projektnavne forbundet via 'primary_tech_id' (**Foreign Key**).
 
    ---

    ## Eksempel på forespørrgsel (INNER JOIN)

    ```sql
    SELECT projects.title. technologies.tech_name, technologies.category'
    FROM projects
    JOIN technologies ON projects.primary_tech_id = technologies.tech_id;
    ```
[Åbn interaktiv DB Fiddle](https://www.db-fiddle.com/f/hi5enk3Y1ezLjPzMVLzcGQ/0)
