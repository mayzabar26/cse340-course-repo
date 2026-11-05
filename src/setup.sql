
-- Organization Table
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);


-- Insert sample data: Organizations
INSERT INTO organization (
    name,
    description,
    contact_email,
    logo_filename
)
VALUES
(
    'BrightFuture Builders',
    'A nonprofit focused on improving community infrastructure through sustainable construction projects.',
    'info@brightfuturebuilders.org',
    'brightfuture-logo.png'
),
(
    'GreenHarvest Growers',
    'An urban farming collective promoting food sustainability and education in local neighborhoods.',
    'contact@greenharvest.org',
    'greenharvest-logo.png'
),
(
    'UnityServe Volunteers',
    'A volunteer coordination group supporting local charities and service initiatives.',
    'hello@unityserve.org',
    'unityserve-logo.png'
);

-- Service Projects Table
CREATE TABLE service_project (
    service_project_id SERIAL PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(200) NOT NULL,
    project_date DATE NOT NULL,

    CONSTRAINT fk_service_project_organization
        FOREIGN KEY (organization_id)
        REFERENCES organization (organization_id)
);

-- Insert data: Service Projects
INSERT INTO service_project
    (organization_id, title, description, location, project_date)
VALUES
    (1, 'Community Center Renovation',
     'Renovate a local community center.',
     'Springfield Community Center', '2026-11-15'),

    (1, 'Safe Playground Initiative',
     'Improve playground safety for children.',
     'Central Park, Springfield', '2026-11-20'),

    (1, 'Neighborhood Road Repair',
     'Repair damaged roads in the neighborhood.',
     'North Springfield', '2026-12-05'),

    (1, 'Public Library Upgrade',
     'Improve facilities at the public library.',
     'Springfield Public Library', '2026-12-12'),

    (1, 'Accessible Community Spaces',
     'Improve accessibility in public spaces.',
     'Downtown Springfield', '2027-01-10'),

    (2, 'Community Garden',
     'Create a shared garden for local residents.',
     'Green Valley', '2026-11-16'),

    (2, 'Tree Planting Day',
     'Plant trees to increase neighborhood greenery.',
     'Green Valley Park', '2026-11-22'),

    (2, 'Urban Farming Workshop',
     'Teach residents sustainable farming methods.',
     'Green Valley Learning Center', '2026-12-03'),

    (2, 'Pollinator Garden',
     'Create a garden that supports pollinators.',
     'East Green Valley', '2026-12-14'),

    (2, 'Community Compost Program',
     'Help residents reduce organic waste.',
     'Green Valley Community Hub', '2027-01-12'),

    (3, 'Food Donation Drive',
     'Collect food for families in need.',
     'Unity Community Hall', '2026-11-18'),

    (3, 'Senior Support Program',
     'Organize assistance for older residents.',
     'Unity Senior Center', '2026-11-25'),

    (3, 'School Supply Campaign',
     'Collect school supplies for local students.',
     'Unity Elementary School', '2026-12-07'),

    (3, 'Winter Clothing Drive',
     'Collect warm clothing for the community.',
     'Unity Community Hall', '2026-12-18'),

    (3, 'Community Clean-Up',
     'Organize volunteers to clean public spaces.',
     'Riverside District', '2027-01-15');