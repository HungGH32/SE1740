/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Dell
 */
public class Feedback {
//    create table [Feedback](
//	[feedback_id] int not null identity(1,1) primary key,
//	[user_id] int,
//	[product_id] int,
//	[note] nvarchar(1000),
//	[create_time] DATETIME ,
//	[update_time] DATETIME ,
//	FOREIGN KEY (user_id) REFERENCES [User](user_id),
//	FOREIGN KEY (product_id) REFERENCES [Product](product_id)
//);
    private int feedback_id;
    private int user_id;
    private int product_id;
    private String note;
    private Date create_time;
    private Date update_time;

    public Feedback() {
    }

    public Feedback(int feedback_id, int user_id, int product_id, String note, Date create_time, Date update_time) {
        this.feedback_id = feedback_id;
        this.user_id = user_id;
        this.product_id = product_id;
        this.note = note;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public int getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedback_id=" + feedback_id + ", user_id=" + user_id + ", product_id=" + product_id + ", note=" + note + ", create_time=" + create_time + ", update_time=" + update_time + '}';
    }
    
    
}
