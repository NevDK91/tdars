SET @old_id = 22;
SET @new_id = 3;
SET @city_id = 17;

SET @rejimRab = (select(rejimRab) from punkt where( punkt.id = @old_id and punkt.id_city = @city_id ));
SET @id_city = (select(id_city) from punkt where( punkt.id = @old_id and punkt.id_city = @city_id ));
SET @phone = (select(phone) from punkt where( punkt.id = @old_id and punkt.id_city = @city_id ));
SET @coords = "";
SET @addr = (select(addr) from punkt where( punkt.id = @old_id and punkt.id_city = @city_id ));

insert into punkt_copy(id, rejimRab, id_city, phone, coords, addr) values(null, @rejimRab, @id_city , @phone , @coords, @addr )
