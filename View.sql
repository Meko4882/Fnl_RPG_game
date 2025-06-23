CREATE VIEW PlayerStatus AS
SELECT
    p.player_id,
    p.name,
    p.level,
    p.current_hp,
    p.current_mp,
    et.base_hp,
    et.base_mp
FROM Player p
JOIN EntityTemplate et ON p.template_id = et.template_id;
