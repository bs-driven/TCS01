INSERT INTO therapists(therapist_id,first_name, last_name, email_addy, admin_priv)
VALUES
(001,"luffy","king", "priate_king@email.com", true),
(002, "gon", "freaks", "truehunter@hunterhunter.com", false),
(003, "Joia", "Marie", "jlove@icloud.com", false),
(004, "Meisha", "Greene", "meishasg@webpage.com", false);


INSERT INTO clients (client_id,first_name,last_name, therapist_id, email_addy)
VALUES
(201001, "Andre", "Miller", 001, "draftemail@icloud.com"),
(201002, "Carmelo", "Anthony", 002, "melo15@gmail.com"),
(201003, "Ant", "Edwards", 004, "ANTMAN05@minwolves.com" );
