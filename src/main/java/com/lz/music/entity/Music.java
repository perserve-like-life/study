package com.lz.music.entity;

/**
 * @PACKAGE com.lz.music.entity.Music
 * @DATE 2019/10/8 20:23
 * @AUTHOR LZ
 * @EFFECT
 **/

public class Music {
    private long id;
    private String name;
    private String singer;
    private String special;
    private String downloadPath;

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", singer='" + singer + '\'' +
                ", special='" + special + '\'' +
                ", downloadPath='" + downloadPath + '\'' +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDownloadPath() {
        return downloadPath;
    }

    public void setDownloadPath(String downloadPath) {
        this.downloadPath = downloadPath;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special;
    }
}
