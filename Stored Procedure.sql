DELIMITER //
CREATE PROCEDURE GainExp(
    IN pid INT,
    IN exp_gain INT
)
BEGIN
    UPDATE Player
    SET experience = experience + exp_gain
    WHERE player_id = pid;
END;
//
DELIMITER ;
