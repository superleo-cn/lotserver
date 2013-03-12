// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.ExpertCode;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ExpertCode_Roo_Json {
    
    public String ExpertCode.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static ExpertCode ExpertCode.fromJsonToExpertCode(String json) {
        return new JSONDeserializer<ExpertCode>().use(null, ExpertCode.class).deserialize(json);
    }
    
    public static String ExpertCode.toJsonArray(Collection<ExpertCode> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<ExpertCode> ExpertCode.fromJsonArrayToExpertCodes(String json) {
        return new JSONDeserializer<List<ExpertCode>>().use(null, ArrayList.class).use("values", ExpertCode.class).deserialize(json);
    }
    
}
