SELECT *
FROM appointments
JOIN therapists ON appointments.therapist_id = therapists.therapist_id;

SELECT *
FROM clients
JOIN therapists ON clients.therapist_id = therapists.therapist_id;

SELECT *
FROM dapNotes
JOIN therapists ON dapNotes.therapist_id = therapists.therapist_id;

SELECT *
FROM soapNotes
JOIN therapists ON soapNotes.therapist_id = therapists.therapist_id;

SELECT *
FROM birpNotes
JOIN therapists ON birpNotes.therapist_id = therapists.therapist_id;

