package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ModelSingleton {
    private static ModelSingleton model;
    private List<User> list;

    private ModelSingleton(){
        list = new ArrayList<>();
    }

    public static ModelSingleton getInstance(){
        synchronized (ModelSingleton.class){
            if(model == null){
                model = new ModelSingleton();
            }
            return model;
        }
    }

    public void addUser(User u){
        list.add(u);
    }

    public List<String> getAllUserName(){
        return list.stream().map(User::getName).collect(Collectors.toList());
    }
}
