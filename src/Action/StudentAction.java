package Action;

import java.util.ArrayList;
import java.util.List;
 
import com.opensymphony.xwork2.ActionSupport;
 
import Entity.Student;
 
public class StudentAction extends ActionSupport {
    private List<Student> listStudents;
 
    /**
     * init and show listStudents to View
     * 
     * @author viettuts.vn
     * @return SUCCESS
     */
    public String init() {
        // init listStudents
        listStudents = new ArrayList<Student>();
        listStudents.add(new Student(1, "Vinh", "Male", "vinh@gmail.com", 
                "0981231234", "Ha Noi", false));
        listStudents.add(new Student(2, "Hoa", "Female", "hoa@gmail.com", 
                "0981241234", "Ha Noi", false));
        listStudents.add(new Student(3, "Phu", "Male", "phu@gmail.com", 
                "0981258888", "Ha Noi", false));
        listStudents.add(new Student(4, "Quy", "Male", "quy@gmail.com", 
                "0981268888", "Ha Noi", false));
        listStudents.add(new Student(5, "Phong", "Male", "phong@gmail.com", 
                "0981278888", "Ha Noi", false));
        return SUCCESS;
    }
     
    /**
     * delete student action
     * 
     * @author viettuts.vn
     * @return SUCCESS
     */
    public String delete() {
        // delete student has delFlag = true
        int size = listStudents.size();
        if (listStudents != null && size > 0) {
            for (int i = 0 ; i < size; i++) {
                if (listStudents.get(i) != null
                        && listStudents.get(i).isDelFlag()) {
                    listStudents.remove(i);
                    size = listStudents.size();
                }
            }
        }
        return SUCCESS;
    }
     
    // getter and setter
    public List<Student> getListStudents() {
        return listStudents;
    }
     
    public void setListStudents(List<Student> listStudents) {
        this.listStudents = listStudents;
    }
}
