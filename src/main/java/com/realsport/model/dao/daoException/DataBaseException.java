package com.realsport.model.dao.daoException;

/**
 * Created by Igor Ryabtsev on 28.12.2016.
 * Класс исключения для передачи информации пользователю об ошибке
 */
public class DataBaseException extends Exception {

    public DataBaseException() {
        super();
    }

    public String message() {
        return "Сообщение пользователю: Произошла ошибка при запросе к базе данных";
    }
}
