// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.ChargeConfig;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ChargeConfig_Roo_Json {
    
    public String ChargeConfig.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static ChargeConfig ChargeConfig.fromJsonToChargeConfig(String json) {
        return new JSONDeserializer<ChargeConfig>().use(null, ChargeConfig.class).deserialize(json);
    }
    
    public static String ChargeConfig.toJsonArray(Collection<ChargeConfig> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<ChargeConfig> ChargeConfig.fromJsonArrayToChargeConfigs(String json) {
        return new JSONDeserializer<List<ChargeConfig>>().use(null, ArrayList.class).use("values", ChargeConfig.class).deserialize(json);
    }
    
}
