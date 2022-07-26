--1)
SELECT users.id, users.name, cities.name AS city FROM users JOIN cities ON users."cityId"=cities.id WHERE cities.name='Rio de Janeiro';
--2)
SELECT testimonials.id, u1.name AS writer, u2.name AS recipient, testimonials.message  FROM testimonials JOIN users u1 ON testimonials."writerId"=u1.id JOIN users u2 ON u2.id=testimonials."recipientId";
--3)
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" FROM educations JOIN users ON educations."userId"=users.id JOIN courses ON educations."courseId"=courses.id JOIN schools ON educations."schoolId"=schools.id WHERE educations."status"='finished';
--4)
SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate" FROM experiences JOIN users ON experiences."userId"=users.id JOIN roles ON experiences."roleId"=roles.id JOIN companies ON experiences."companyId"=companies.id WHERE experiences."endDate" IS NULL AND users.id=50;