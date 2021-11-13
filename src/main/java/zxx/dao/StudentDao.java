package zxx.dao;

import zxx.domain.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudents();
}
