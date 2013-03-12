// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.Tbroadcast;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Tbroadcast_Roo_Json {
    
    public String Tbroadcast.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Tbroadcast Tbroadcast.fromJsonToTbroadcast(String json) {
        return new JSONDeserializer<Tbroadcast>().use(null, Tbroadcast.class).deserialize(json);
    }
    
    public static String Tbroadcast.toJsonArray(Collection<Tbroadcast> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Tbroadcast> Tbroadcast.fromJsonArrayToTbroadcasts(String json) {
        return new JSONDeserializer<List<Tbroadcast>>().use(null, ArrayList.class).use("values", Tbroadcast.class).deserialize(json);
    }
    
}
