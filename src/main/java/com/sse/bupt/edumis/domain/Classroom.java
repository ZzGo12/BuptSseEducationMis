package com.sse.bupt.edumis.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Classroom implements Serializable {
    private Integer id;
    private String name;
    private String address;
    private Integer galleryful;

    Set<Course> courses = new HashSet<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getGalleryful() {
        return galleryful;
    }

    public void setGalleryful(Integer galleryful) {
        this.galleryful = galleryful;
    }

    public Set<Course> getCourses() {
        return courses;
    }

    public void setCourses(Set<Course> courses) {
        this.courses = courses;
    }

    @Override
    public String toString() {
        return "Classroom{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", galleryful=" + galleryful +
                ", courses=" + courses +
                '}';
    }
}
