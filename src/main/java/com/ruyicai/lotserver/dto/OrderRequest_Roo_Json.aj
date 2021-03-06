// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.dto;

import com.ruyicai.lotserver.dto.OrderRequest;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect OrderRequest_Roo_Json {
    
    public String OrderRequest.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static OrderRequest OrderRequest.fromJsonToOrderRequest(String json) {
        return new JSONDeserializer<OrderRequest>().use(null, OrderRequest.class).deserialize(json);
    }
    
    public static String OrderRequest.toJsonArray(Collection<OrderRequest> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<OrderRequest> OrderRequest.fromJsonArrayToOrderRequests(String json) {
        return new JSONDeserializer<List<OrderRequest>>().use(null, ArrayList.class).use("values", OrderRequest.class).deserialize(json);
    }
    
}
