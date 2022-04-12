INSERT INTO customer VALUES(
	1,
	26
);

INSERT INTO movie VALUES(
	'Gladiator',
	10,
	5,
	CURRENT_DATE
);

INSERT INTO ticket VALUES(
	1,
	1,
	'Gladiator'
);

INSERT INTO concession VALUES(
	1,
	1,
	40.00,
	1
);

SELECT ALL *
FROM ticket;