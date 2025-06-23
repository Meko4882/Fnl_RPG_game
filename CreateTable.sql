-- 玩家資料表
CREATE TABLE Player (
    player_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    template_id INT NOT NULL,
    level INT NOT NULL DEFAULT 1,
    experience INT NOT NULL DEFAULT 0,
    current_hp INT NOT NULL,
    current_mp INT NOT NULL,
    FOREIGN KEY (template_id) REFERENCES EntityTemplate(template_id)
);

-- 玩家裝備資料表
CREATE TABLE PlayerEquipment (
    player_id INT,
    slot ENUM('weapon', 'armor'),
    item_id INT,
    PRIMARY KEY (player_id, slot),
    FOREIGN KEY (player_id) REFERENCES Player(player_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

-- 玩家背包資料表
CREATE TABLE PlayerInventory (
    player_id INT,
    item_id INT,
    quantity INT NOT NULL CHECK (quantity >= 0),
    PRIMARY KEY (player_id, item_id),
    FOREIGN KEY (player_id) REFERENCES Player(player_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

-- 怪物資料表
CREATE TABLE Monster (
    monster_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    template_id INT NOT NULL,
    current_hp INT NOT NULL,
    FOREIGN KEY (template_id) REFERENCES EntityTemplate(template_id)
);
