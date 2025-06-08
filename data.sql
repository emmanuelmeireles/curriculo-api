-- Criação das tabelas
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  bio TEXT
);

CREATE TABLE experiences (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  title TEXT,
  company TEXT,
  start_date DATE,
  end_date DATE,
  description TEXT
);

CREATE TABLE educations (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  school TEXT,
  degree TEXT,
  start_year INT,
  end_year INT
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  name TEXT,
  description TEXT,
  link TEXT
);

CREATE TABLE skills (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  name TEXT
);

-- Inserção dos usuários
INSERT INTO users (name, email, bio) VALUES
('Emmanuel Meireles', 'emmanuel@email.com', 'Desenvolvedor backend com foco em APIs REST e banco de dados.'),
('Carla Silva', 'carla@email.com', 'Engenheira de software apaixonada por frontend e usabilidade.');

-- Experiências
INSERT INTO experiences (user_id, title, company, start_date, end_date, description) VALUES
(1, 'Desenvolvedor Node.js', 'CodeHub', '2022-02-01', '2024-05-31', 'Criação de APIs e microsserviços com Express e PostgreSQL.'),
(2, 'Frontend Developer', 'UXWorld', '2021-08-01', '2023-12-31', 'Desenvolvimento de interfaces responsivas com React.');

-- Formações
INSERT INTO educations (user_id, school, degree, start_year, end_year) VALUES
(1, 'UNICAP', 'Sistemas para Internet', 2023, 2025),
(2, 'UFRJ', 'Sistemas de Informação', 2016, 2020);

-- Projetos
INSERT INTO projects (user_id, name, description, link) VALUES
(1, 'API de Currículo', 'Projeto backend completo com Express, PostgreSQL e Vercel.', 'https://github.com/emmanuel/curriculo-api'),
(2, 'Portfólio Interativo', 'Website pessoal com animações e design acessível.', 'https://github.com/carla/portfolio-react');

-- Habilidades
INSERT INTO skills (user_id, name) VALUES
(1, 'Node.js'), (1, 'Express'), (1, 'PostgreSQL'), (1, 'Docker'), (1, 'Git'),
(2, 'HTML'), (2, 'CSS'), (2, 'JavaScript'), (2, 'React'), (2, 'Figma');
