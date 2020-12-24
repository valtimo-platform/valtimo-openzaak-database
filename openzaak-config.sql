CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO accounts_user (password, first_name, last_name, username, is_superuser, email, is_staff, is_active, date_joined) VALUES
('pbkdf2_sha256$150000$5dnJUqLDsmX0$EEbO4AGZqyp88ZCTu+7W2uGRLkdidlL4HkXWc8ZfZV8=', 'Valtimo', 'Demo', 'demo', true, 'demo@valtimo.nl', true, true, now());

INSERT INTO catalogi_catalogus (_admin_name, uuid, domein, rsin, contactpersoon_beheer_naam, contactpersoon_beheer_telefoonnummer, contactpersoon_beheer_emailadres) VALUES
('valtimo', uuid_generate_v4(), 'VAL', '103434343', 'Valtimo Demo', '06-12345678', 'demo@valtimo.nl');

INSERT INTO authorizations_applicatie (uuid, client_ids, label, heeft_alle_autorisaties) VALUES
(uuid_generate_v4(), '{valtimo_client}', 'Valtimo', true);

INSERT INTO vng_api_common_jwtsecret (identifier, secret) VALUES
('valtimo_client', 'e09b8bc5-5831-4618-ab28-41411304309d');