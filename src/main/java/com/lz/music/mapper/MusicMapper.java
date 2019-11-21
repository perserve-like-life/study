package com.lz.music.mapper;

import com.lz.music.entity.Music;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @PACKAGE com.lz.music.mapper.MusicMapper
 * @DATE 2019/10/8 20:16
 * @AUTHOR LZ
 * @EFFECT
 **/
@Mapper
public interface MusicMapper {
    List<Music> list();
}
