package com.sse.bupt.edumis.utils;

import com.sse.bupt.edumis.domain.Course;

import java.util.*;

/**
 * Created by Nothing on 2017/5/11.
 */
public class CourseUtil {
    public static void filterCourse(List<Course> courseAvas,List<Course> courseGets) {
        Set<Integer> indexList = new TreeSet<>(new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                return o2.compareTo(o1);
            }
        });
        for(int i = 0; i < courseAvas.size(); i++) {
            for(int j = 0; j < courseGets.size(); j++) {
                Course courseAva = courseAvas.get(i);
                Course courseGet = courseGets.get(j);
                if(courseAva.getDay() == courseGet.getDay()) {
                    Integer startTimeAva = courseAva.getStartTime();
                    Integer startTimeGet = courseGet.getStartTime();
                    Integer endTimeAva = courseAva.getEndTime();
                    Integer endTimeGet = courseGet.getEndTime();
                    Integer startWeekAva = courseAva.getStartWeek();
                    Integer startWeekGet = courseGet.getStartWeek();
                    Integer endWeekAva = courseAva.getEndWeek();
                    Integer endWeekGet = courseGet.getEndWeek();
                    if(!((endTimeAva < startTimeGet) || (endTimeGet < startTimeAva))) {
                        if(!((endWeekAva < startWeekGet) || (endWeekGet < startWeekAva))) {
                            indexList.add(i);
                        }
                    }
                }
            }
        }
        for(int index: indexList) {
            courseAvas.remove(index);
        }
    }
}
