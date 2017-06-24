package com.realsport.model.entityDao.entityJPA;

import javax.persistence.*;

/**
 * Created by IgorR on 19.06.2017.
 */
@Entity
@Table(name = "basketball", schema = "sportmap", catalog = "")
public class BasketballEntity {
    private int idbasketball;
    private String name;
    private String latitude;
    private String longitude;
    private String links;
    private String сreator;
    private String sity;
    private String street;
    private String house;
    private String image;
    private String subject;
    private String info;
    private String size;
    private String coating;
    private Byte school;
    private String institutions;

    @Id
    @Column(name = "idbasketball")
    public int getIdbasketball() {
        return idbasketball;
    }

    public void setIdbasketball(int idbasketball) {
        this.idbasketball = idbasketball;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "latitude")
    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    @Basic
    @Column(name = "longitude")
    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    @Basic
    @Column(name = "links")
    public String getLinks() {
        return links;
    }

    public void setLinks(String links) {
        this.links = links;
    }

    @Basic
    @Column(name = "сreator")
    public String getСreator() {
        return сreator;
    }

    public void setСreator(String сreator) {
        this.сreator = сreator;
    }

    @Basic
    @Column(name = "sity")
    public String getSity() {
        return sity;
    }

    public void setSity(String sity) {
        this.sity = sity;
    }

    @Basic
    @Column(name = "street")
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Basic
    @Column(name = "house")
    public String getHouse() {
        return house;
    }

    public void setHouse(String house) {
        this.house = house;
    }

    @Basic
    @Column(name = "image")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "subject")
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Basic
    @Column(name = "info")
    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Basic
    @Column(name = "size")
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Basic
    @Column(name = "coating")
    public String getCoating() {
        return coating;
    }

    public void setCoating(String coating) {
        this.coating = coating;
    }

    @Basic
    @Column(name = "school")
    public Byte getSchool() {
        return school;
    }

    public void setSchool(Byte school) {
        this.school = school;
    }

    @Basic
    @Column(name = "institutions")
    public String getInstitutions() {
        return institutions;
    }

    public void setInstitutions(String institutions) {
        this.institutions = institutions;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BasketballEntity that = (BasketballEntity) o;

        if (idbasketball != that.idbasketball) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (latitude != null ? !latitude.equals(that.latitude) : that.latitude != null) return false;
        if (longitude != null ? !longitude.equals(that.longitude) : that.longitude != null) return false;
        if (links != null ? !links.equals(that.links) : that.links != null) return false;
        if (сreator != null ? !сreator.equals(that.сreator) : that.сreator != null) return false;
        if (sity != null ? !sity.equals(that.sity) : that.sity != null) return false;
        if (street != null ? !street.equals(that.street) : that.street != null) return false;
        if (house != null ? !house.equals(that.house) : that.house != null) return false;
        if (image != null ? !image.equals(that.image) : that.image != null) return false;
        if (subject != null ? !subject.equals(that.subject) : that.subject != null) return false;
        if (info != null ? !info.equals(that.info) : that.info != null) return false;
        if (size != null ? !size.equals(that.size) : that.size != null) return false;
        if (coating != null ? !coating.equals(that.coating) : that.coating != null) return false;
        if (school != null ? !school.equals(that.school) : that.school != null) return false;
        if (institutions != null ? !institutions.equals(that.institutions) : that.institutions != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idbasketball;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (latitude != null ? latitude.hashCode() : 0);
        result = 31 * result + (longitude != null ? longitude.hashCode() : 0);
        result = 31 * result + (links != null ? links.hashCode() : 0);
        result = 31 * result + (сreator != null ? сreator.hashCode() : 0);
        result = 31 * result + (sity != null ? sity.hashCode() : 0);
        result = 31 * result + (street != null ? street.hashCode() : 0);
        result = 31 * result + (house != null ? house.hashCode() : 0);
        result = 31 * result + (image != null ? image.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (info != null ? info.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (coating != null ? coating.hashCode() : 0);
        result = 31 * result + (school != null ? school.hashCode() : 0);
        result = 31 * result + (institutions != null ? institutions.hashCode() : 0);
        return result;
    }
}
