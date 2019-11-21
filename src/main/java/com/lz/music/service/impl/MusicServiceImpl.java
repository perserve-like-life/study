package com.lz.music.service.impl;

import com.lz.music.entity.Music;
import com.lz.music.mapper.MusicMapper;
import com.lz.music.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @PACKAGE com.lz.music.service.impl.MusicServiceImpl
 * @DATE 2019/10/8 20:15
 * @AUTHOR LZ
 * @EFFECT
 **/
@Service
public class MusicServiceImpl implements MusicService {
    @Autowired
    private MusicMapper musicMapper;

    @Override
    public List<Music> list() {
        return this.musicMapper.list();
    }
}
