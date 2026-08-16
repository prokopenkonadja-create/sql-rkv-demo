-- RKV DEMO DATABASE: Skills & Projects Management System
-- Candidate: Nadiia Prokopenko
-- Target: Data- og kommunikationsuddannelsen (TEC Ballerup)

-- 1. Create technologies table
CREATE TABLE technologies (
tech_id INT PRIMARY KEY AUTO_INCREMENT,
tech_name VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL
);

-- 2. Insert technology records
INSERT INTO technologies (tech_name, category)
VALUES ('JavaScript', 'Frontend');
INSERT INTO technologies (tech_name, category) VALUES ('C#', 'Backend');
INSERT INTO technologies (tech_name, category) VALUES ('SQL', 'Database');

-- 3. Create projects table with Foreign Key
CREATE TABLE projects (
  project_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  primary_tech_id INT,
  FOREIGN KEY (primary_tech_id) REFERENCES technologies(tech_id)
);

-- 4. Insert project records
INSERT INTO projects (title, primary_tech_id) VALUES ('Interactive Slider', 1);
INSERT INTO projects (title, primary_tech_id) VALUES
('C# Console Basics', 2);

--5. Query combined data using INNER JOIN
SELECT projects.title, technologies.tech_name, technologies.category
FROM projects
JOIN technologies ON projects.primary_tech_id = technologies.tech_id;
