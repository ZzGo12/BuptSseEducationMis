package com.sse.bupt.edumis.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Student_Course_Detail implements Serializable{
    private Integer id;
    private Integer cId;
    private Integer scId;
    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getScId() {
        return scId;
    }

    public void setScId(Integer scId) {
        this.scId = scId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
