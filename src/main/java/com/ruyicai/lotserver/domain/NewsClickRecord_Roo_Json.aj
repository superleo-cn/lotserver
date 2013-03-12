// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.NewsClickRecord;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect NewsClickRecord_Roo_Json {
    
    public String NewsClickRecord.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static NewsClickRecord NewsClickRecord.fromJsonToNewsClickRecord(String json) {
        return new JSONDeserializer<NewsClickRecord>().use(null, NewsClickRecord.class).deserialize(json);
    }
    
    public static String NewsClickRecord.toJsonArray(Collection<NewsClickRecord> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<NewsClickRecord> NewsClickRecord.fromJsonArrayToNewsClickRecords(String json) {
        return new JSONDeserializer<List<NewsClickRecord>>().use(null, ArrayList.class).use("values", NewsClickRecord.class).deserialize(json);
    }
    
}
