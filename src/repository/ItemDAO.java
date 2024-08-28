package repository;

import model.Item;

import model.Cena;

import java.util.List;

public class ItemDAO {
    public static Item findItemById (Integer id) {
        return new  Item();
    }

    public static List<Item> findItensByCena(Cena cena) {

        return List.of();
    }
}

