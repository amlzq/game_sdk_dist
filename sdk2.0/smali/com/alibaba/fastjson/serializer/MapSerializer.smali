.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 37
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v26, v0

    .line 39
    .local v26, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 40
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 263
    :goto_0
    return-void

    :cond_0
    move-object/from16 v23, p2

    .line 44
    check-cast v23, Ljava/util/Map;

    .line 56
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v27, v0

    .line 62
    .local v27, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    const/16 v4, 0x7b

    :try_start_0
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 68
    const/16 v28, 0x0

    .line 69
    .local v28, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 71
    .local v10, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v21, 0x1

    .line 73
    .local v21, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 75
    .local v33, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .line 76
    .local v24, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_2

    const-class v4, Ljava/util/HashMap;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_2

    const-class v4, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_1b

    .line 77
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v17, 0x1

    .line 78
    .local v17, "containsKey":Z
    :goto_1
    if-nez v17, :cond_3

    .line 79
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 81
    const/16 v21, 0x0

    .line 85
    .end local v17    # "containsKey":Z
    .end local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "typeKey":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    move-object/from16 v30, v10

    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v30, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_4
    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 86
    .local v19, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 88
    .local v9, "value":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    .line 91
    .local v20, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v29, v0

    .line 92
    .local v29, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v29, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 93
    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 94
    :cond_5
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v29, v0

    .line 107
    if-eqz v29, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 108
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 109
    :cond_7
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 123
    .local v31, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v31, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 124
    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 125
    :cond_9
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 138
    if-eqz v31, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 139
    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 140
    :cond_b
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 154
    .local v25, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 155
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_24

    .line 156
    :cond_d
    check-cast v20, Ljava/lang/String;

    .end local v20    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 164
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 165
    if-eqz v25, :cond_34

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 166
    if-eqz v20, :cond_f

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 167
    :cond_f
    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .local v20, "entryKey":Ljava/lang/String;
    move-object/from16 v35, v20

    .line 176
    .end local v20    # "entryKey":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v34, v0

    .line 177
    .local v34, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->contextValueFilters:Ljava/util/List;

    move-object/from16 v18, v0

    .line 178
    .local v18, "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    if-eqz v34, :cond_10

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_11

    :cond_10
    if-eqz v18, :cond_13

    .line 179
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 180
    :cond_11
    if-eqz v35, :cond_12

    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_28

    .line 181
    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, v35

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 189
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v34, v0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->contextValueFilters:Ljava/util/List;

    move-object/from16 v18, v0

    .line 191
    if-eqz v34, :cond_14

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_15

    :cond_14
    if-eqz v18, :cond_17

    .line 192
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 193
    :cond_15
    if-eqz v35, :cond_16

    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 194
    :cond_16
    const/4 v12, 0x0

    move-object/from16 v0, v35

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 202
    :cond_17
    :goto_6
    if-nez v9, :cond_18

    .line 203
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    :cond_18
    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2c

    .line 209
    move-object/from16 v0, v35

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 211
    .local v22, "key":Ljava/lang/String;
    if-nez v21, :cond_19

    .line 212
    const/16 v4, 0x2c

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 215
    :cond_19
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 218
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 236
    .end local v22    # "key":Ljava/lang/String;
    :goto_7
    const/16 v21, 0x0

    .line 238
    if-nez v9, :cond_30

    .line 239
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 255
    .end local v9    # "value":Ljava/lang/Object;
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v21    # "first":Z
    .end local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 77
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "first":Z
    .restart local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v33    # "typeKey":Ljava/lang/String;
    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 97
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "typeKey":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v19    # "entry":Ljava/util/Map$Entry;
    .local v20, "entryKey":Ljava/lang/Object;
    .restart local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_1c
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_6

    .line 98
    :cond_1d
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    .line 112
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 113
    :cond_1f
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_2

    .line 128
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_20
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_a

    .line 129
    :cond_21
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_2

    .line 143
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_22
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_c

    .line 144
    :cond_23
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_2

    .line 157
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_24
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_25

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_e

    .line 158
    :cond_25
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .local v20, "entryKey":Ljava/lang/String;
    goto/16 :goto_3

    .line 168
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v20    # "entryKey":Ljava/lang/String;
    :cond_26
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_27

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_34

    .line 169
    :cond_27
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 170
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "entryKey":Ljava/lang/String;
    move-object/from16 v35, v20

    goto/16 :goto_4

    .line 182
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v20    # "entryKey":Ljava/lang/String;
    .restart local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .restart local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_28
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_29

    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_13

    .line 183
    :cond_29
    invoke-static/range {v35 .. v35}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_5

    .line 195
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_2a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2b

    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_17

    .line 196
    :cond_2b
    invoke-static/range {v35 .. v35}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_6

    .line 220
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_2c
    if-nez v21, :cond_2d

    .line 221
    const/16 v4, 0x2c

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 224
    :cond_2d
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_2e

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 225
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_2e

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 226
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 227
    :cond_2e
    invoke-static/range {v35 .. v35}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 228
    .local v32, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 233
    .end local v32    # "strEntryKey":Ljava/lang/String;
    :goto_8
    const/16 v4, 0x3a

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    .line 230
    :cond_2f
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_8

    .line 243
    :cond_30
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 245
    .local v16, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_31

    .line 246
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v30

    move-object/from16 v11, p1

    move-object v12, v9

    move-object/from16 v13, v35

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object/from16 v10, v30

    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_9
    move-object/from16 v30, v10

    .line 253
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_2

    .line 248
    :cond_31
    move-object/from16 v28, v16

    .line 249
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .line 251
    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    move-object/from16 v13, v35

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 255
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_32
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 259
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 262
    :cond_33
    const/16 v4, 0x7d

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v19    # "entry":Ljava/util/Map$Entry;
    .restart local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_34
    move-object/from16 v35, v20

    goto/16 :goto_4
.end method
