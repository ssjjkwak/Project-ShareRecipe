package org.kosta.sharecipe.model;

import java.io.Serializable;
/*
 *  로그인 인증 정보로 세션에 저장될 객체 
 *  서버 리로드 될때 객체 직렬화되어 세션이 백업되므로 
 *  세션에 저장될 객체의 클래스 또한 Serializable interface를 implements 한다 
 */
public class MemberVO implements Serializable{
   private static final long serialVersionUID = 6964264592421059490L;
   private String id;
   private String password;
   private String name;
   private String address;
   private String signInDate;
   private String birthday;
   private String eMail;
   private String tel;
   public MemberVO() {
      super();
      // TODO Auto-generated constructor stub
   }
   public MemberVO(String id, String password, String name, String address, String signInDate, String birthday,
         String eMail, String tel) {
      super();
      this.id = id;
      this.password = password;
      this.name = name;
      this.address = address;
      this.signInDate = signInDate;
      this.birthday = birthday;
      this.eMail = eMail;
      this.tel = tel;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
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
   public String getSignInDate() {
      return signInDate;
   }
   public void setSignInDate(String signInDate) {
      this.signInDate = signInDate;
   }
   public String getBirthday() {
      return birthday;
   }
   public void setBirthday(String birthday) {
      this.birthday = birthday;
   }
   public String geteMail() {
      return eMail;
   }
   public void seteMail(String eMail) {
      this.eMail = eMail;
   }
   public String getTel() {
      return tel;
   }
   public void setTel(String tel) {
      this.tel = tel;
   }
   public static long getSerialversionuid() {
      return serialVersionUID;
   }
   @Override
   public String toString() {
      return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", address=" + address
            + ", signInDate=" + signInDate + ", birthday=" + birthday + ", eMail=" + eMail + ", tel=" + tel + "]";
   }
}