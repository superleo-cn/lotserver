// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import java.lang.String;

privileged aspect NewsClickRecord_Roo_ToString {
    
    public String NewsClickRecord.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CreateTime: ").append(getCreateTime()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Imei: ").append(getImei()).append(", ");
        sb.append("NewsId: ").append(getNewsId()).append(", ");
        sb.append("NewsType: ").append(getNewsType()).append(", ");
        sb.append("Productno: ").append(getProductno());
        return sb.toString();
    }
    
}
