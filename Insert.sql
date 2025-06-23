-- EntityTemplate
INSERT INTO EntityTemplate VALUES
(1, 'Warrior', 100, 30, 15, 10, 50),
(2, 'Goblin',  50, 10,  8,  5, 20),
(3, 'Mage',    70, 80, 10,  4, 60),
(4, 'Orc',     120, 20, 18, 12, 80),
(5, 'Archer',  85, 40, 12, 7, 55),
(6, 'Slime',   40, 5, 5, 2, 10);

-- Item
INSERT INTO Item VALUES
(101, 'Iron Sword', 'weapon', 0, 0, 10, 0),
(102, 'Leather Armor', 'armor', 0, 0, 0, 5),
(103, 'Health Potion', 'consumable', 50, 0, 0, 0),
(104, 'Magic Staff', 'weapon', 0, 0, 5, 0),
(105, 'Wizard Robe', 'armor', 0, 0, 0, 3),
(106, 'Bow', 'weapon', 0, 0, 8, 0),
(107, 'Hunter Cloak', 'armor', 0, 0, 0, 4),
(108, 'Mana Potion', 'consumable', 0, 30, 0, 0);

-- Player
INSERT INTO Player VALUES
(1, 'Hero', 1, 5, 120, 90, 25),
(2, 'Alice', 3, 3, 80, 70, 60),
(3, 'Bob', 5, 2, 40, 85, 20),
(4, 'Clara', 1, 4, 100, 80, 35),
(5, 'Dave', 3, 6, 150, 90, 75);

-- PlayerEquipment
INSERT INTO PlayerEquipment VALUES
(1, 'weapon', 101),
(1, 'armor', 102),
(2, 'weapon', 104),
(2, 'armor', 105),
(3, 'weapon', 106),
(3, 'armor', 107),
(4, 'weapon', 101),
(4, 'armor', 102),
(5, 'weapon', 104),
(5, 'armor', 105);

-- PlayerInventory
INSERT INTO PlayerInventory VALUES
(1, 101, 1), (1, 102, 1), (1, 103, 3),
(2, 104, 1), (2, 105, 1), (2, 103, 5),
(3, 106, 1), (3, 107, 1), (3, 103, 2), (3, 108, 2),
(4, 101, 1), (4, 102, 1), (4, 103, 5),
(5, 104, 1), (5, 105, 1), (5, 103, 1), (5, 108, 4);

-- Monster
INSERT INTO Monster VALUES
(1, 'Goblin A', 2, 50),
(2, 'Goblin B', 2, 50),
(3, 'Orc Chief', 4, 120),
(4, 'Slime A', 6, 40),
(5, 'Slime B', 6, 40),
(6, 'Goblin C', 2, 50);
