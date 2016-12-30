.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 28
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 29
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 17
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 66
    .local v5, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 68
    .local v6, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    .line 69
    instance-of v15, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_5

    move-object v13, v5

    .line 70
    check-cast v13, Ljava/lang/reflect/TypeVariable;

    .local v13, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v10, p2

    .line 71
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 73
    .local v10, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v8, 0x0

    .line 74
    .local v8, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Class;

    if-eqz v15, :cond_0

    .line 75
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v8, Ljava/lang/Class;

    .line 78
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v9, -0x1

    .line 79
    .local v9, "paramIndex":I
    if-eqz v8, :cond_1

    .line 80
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    array-length v12, v15

    .local v12, "size":I
    :goto_0
    if-ge v2, v12, :cond_1

    .line 81
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v3, v15, v2

    .line 82
    .local v3, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 83
    move v9, v2

    .line 89
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v12    # "size":I
    :cond_1
    const/4 v15, -0x1

    if-eq v9, v15, :cond_2

    .line 90
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    aget-object v5, v15, v9

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 127
    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "paramIndex":I
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v13    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 129
    .local v7, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 130
    if-nez v6, :cond_3

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .end local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 132
    .restart local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    .line 135
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 137
    const/4 v2, 0x0

    .line 138
    .restart local v2    # "i":I
    :goto_2
    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 139
    :goto_3
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 140
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 80
    .end local v7    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "paramIndex":I
    .restart local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v12    # "size":I
    .restart local v13    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "paramIndex":I
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v12    # "size":I
    .end local v13    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_5
    instance-of v15, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    move-object v11, v5

    .line 96
    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    .line 97
    .local v11, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 98
    .local v4, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v15, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    aget-object v15, v4, v15

    instance-of v15, v15, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_2

    .line 99
    const/4 v15, 0x0

    aget-object v13, v4, v15

    check-cast v13, Ljava/lang/reflect/TypeVariable;

    .restart local v13    # "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v10, p2

    .line 100
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 102
    .restart local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v8, 0x0

    .line 103
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Class;

    if-eqz v15, :cond_6

    .line 104
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v8, Ljava/lang/Class;

    .line 107
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const/4 v9, -0x1

    .line 108
    .restart local v9    # "paramIndex":I
    if-eqz v8, :cond_7

    .line 109
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    array-length v12, v15

    .restart local v12    # "size":I
    :goto_4
    if-ge v2, v12, :cond_7

    .line 110
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v3, v15, v2

    .line 111
    .restart local v3    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 112
    move v9, v2

    .line 119
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v12    # "size":I
    :cond_7
    const/4 v15, -0x1

    if-eq v9, v15, :cond_2

    .line 120
    const/4 v15, 0x0

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    aget-object v16, v16, v9

    aput-object v16, v4, v15

    .line 121
    new-instance v5, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local v5    # "itemType":Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v4, v15, v0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local v5    # "itemType":Ljava/lang/reflect/Type;
    goto/16 :goto_1

    .line 109
    .restart local v2    # "i":I
    .restart local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v12    # "size":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 145
    .end local v3    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v4    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "paramIndex":I
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v12    # "size":I
    .end local v13    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v7    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_9
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 160
    const/16 v15, 0x10

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 169
    .end local v2    # "i":I
    :goto_5
    return-void

    .line 149
    .restart local v2    # "i":I
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v5, v15}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 150
    .local v14, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 154
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 155
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 137
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 162
    .end local v2    # "i":I
    .end local v14    # "val":Ljava/lang/Object;
    :cond_c
    if-nez v6, :cond_d

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .end local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 165
    .restart local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_d
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v5, v15}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 166
    .restart local v14    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_5
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 52
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 53
    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 56
    if-nez p2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
