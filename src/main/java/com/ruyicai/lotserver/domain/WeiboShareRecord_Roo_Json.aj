// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.WeiboShareRecord;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect WeiboShareRecord_Roo_Json {
    
    public String WeiboShareRecord.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static WeiboShareRecord WeiboShareRecord.fromJsonToWeiboShareRecord(String json) {
        return new JSONDeserializer<WeiboShareRecord>().use(null, WeiboShareRecord.class).deserialize(json);
    }
    
    public static String WeiboShareRecord.toJsonArray(Collection<WeiboShareRecord> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<WeiboShareRecord> WeiboShareRecord.fromJsonArrayToWeiboShareRecords(String json) {
        return new JSONDeserializer<List<WeiboShareRecord>>().use(null, ArrayList.class).use("values", WeiboShareRecord.class).deserialize(json);
    }
    
}
