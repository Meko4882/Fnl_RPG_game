DELIMITER //
CREATE TRIGGER RemoveEmptyInventory
AFTER UPDATE ON PlayerInventory
FOR EACH ROW
BEGIN
    IF NEW.quantity <= 0 THEN
        DELETE FROM PlayerInventory
        WHERE player_id = NEW.player_id AND item_id = NEW.item_id;
    END IF;
END;
//
DELIMITER ;
