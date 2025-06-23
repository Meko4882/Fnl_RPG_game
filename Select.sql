--查每位玩家道具總數（由大到小排序）
SELECT p.name AS player_name, SUM(pi.quantity) AS total_items
FROM Player p
JOIN PlayerInventory pi ON p.player_id = pi.player_id
GROUP BY p.name
ORDER BY total_items DESC;

-- 查擁有 Mana Potion 的玩家
SELECT p.name AS player_name, pi.quantity
FROM PlayerInventory pi
JOIN Player p ON p.player_id = pi.player_id
JOIN Item i ON pi.item_id = i.item_id
WHERE i.name = 'Mana Potion';

-- 查每位玩家總攻擊力（基礎攻擊 + 武器加成）
SELECT 
    p.name AS player_name,
    et.base_attack + COALESCE(i.effect_atk, 0) AS total_attack
FROM Player p
JOIN EntityTemplate et ON p.template_id = et.template_id
LEFT JOIN PlayerEquipment pe ON p.player_id = pe.player_id AND pe.slot = 'weapon'
LEFT JOIN Item i ON pe.item_id = i.item_id;

-- 查詢為 Mage 的玩家
SELECT p.name
FROM Player p
JOIN EntityTemplate et ON p.template_id = et.template_id
WHERE et.name = 'Mage';

-- 查出目前所有玩家的等級與經驗值排行榜
SELECT name, level, experience
FROM Player
ORDER BY level DESC, experience DESC;
