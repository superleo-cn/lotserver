// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.dto;

import com.ruyicai.lotserver.dto.SendChannel;
import com.ruyicai.lotserver.dto.UserSMSTiming;
import java.util.List;

privileged aspect UserSettingDTO_Roo_JavaBean {
    
    public UserSMSTiming UserSettingDTO.getUserSMSTiming() {
        return this.userSMSTiming;
    }
    
    public void UserSettingDTO.setUserSMSTiming(UserSMSTiming userSMSTiming) {
        this.userSMSTiming = userSMSTiming;
    }
    
    public List<SendChannel> UserSettingDTO.getSendChannels() {
        return this.sendChannels;
    }
    
    public void UserSettingDTO.setSendChannels(List<SendChannel> sendChannels) {
        this.sendChannels = sendChannels;
    }
    
}
