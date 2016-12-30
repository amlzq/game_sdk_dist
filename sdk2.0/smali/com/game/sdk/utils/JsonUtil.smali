.class public Lcom/game/sdk/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson2Array(Ljava/lang/Class;Ljava/lang/String;)[Lcom/game/sdk/domain/JsonParseInterface;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/game/sdk/domain/JsonParseInterface;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 54
    if-nez p1, :cond_1

    move-object v4, v6

    .line 78
    :cond_0
    :goto_0
    return-object v4

    .line 58
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "jo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/JsonParseInterface;

    .line 60
    .local v3, "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    invoke-interface {v3}, Lcom/game/sdk/domain/JsonParseInterface;->getShotName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    invoke-interface {v3}, Lcom/game/sdk/domain/JsonParseInterface;->getShotName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 63
    .local v5, "json_arry":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {p0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 62
    check-cast v4, [Lcom/game/sdk/domain/JsonParseInterface;

    .line 64
    .local v4, "jobjs":[Lcom/game/sdk/domain/JsonParseInterface;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    check-cast v3, Lcom/game/sdk/domain/JsonParseInterface;

    .line 66
    .restart local v3    # "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/game/sdk/domain/JsonParseInterface;->parseJson(Lorg/json/JSONObject;)V

    .line 67
    aput-object v3, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "i":I
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    .end local v4    # "jobjs":[Lcom/game/sdk/domain/JsonParseInterface;
    .end local v5    # "json_arry":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_2
    move-object v4, v6

    .line 78
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseJson2ArrayNoShotName(Ljava/lang/Class;Ljava/lang/String;)[Lcom/game/sdk/domain/JsonParseInterface;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/game/sdk/domain/JsonParseInterface;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 116
    if-nez p1, :cond_1

    move-object v5, v7

    .line 137
    :cond_0
    :goto_0
    return-object v5

    .line 120
    :cond_1
    const/4 v4, 0x0

    .line 121
    .local v4, "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "joarray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {p0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 122
    check-cast v5, [Lcom/game/sdk/domain/JsonParseInterface;

    .line 124
    .local v5, "jobj_array":[Lcom/game/sdk/domain/JsonParseInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/game/sdk/domain/JsonParseInterface;

    move-object v4, v0

    .line 126
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/game/sdk/domain/JsonParseInterface;->parseJson(Lorg/json/JSONObject;)V

    .line 127
    aput-object v4, v5, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "i":I
    .end local v3    # "joarray":Lorg/json/JSONArray;
    .end local v5    # "jobj_array":[Lcom/game/sdk/domain/JsonParseInterface;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    move-object v5, v7

    .line 137
    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseJson2Object(Ljava/lang/Class;Ljava/lang/String;)Lcom/game/sdk/domain/JsonParseInterface;
    .locals 5
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/game/sdk/domain/JsonParseInterface;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 25
    if-nez p1, :cond_0

    move-object v2, v3

    .line 42
    :goto_0
    return-object v2

    .line 29
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "jo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/JsonParseInterface;

    .line 31
    .local v2, "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    invoke-interface {v2}, Lcom/game/sdk/domain/JsonParseInterface;->getShotName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-interface {v2}, Lcom/game/sdk/domain/JsonParseInterface;->getShotName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/game/sdk/domain/JsonParseInterface;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 35
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v2    # "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 42
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseJson2ObjectNoShotName(Ljava/lang/Class;Ljava/lang/String;)Lcom/game/sdk/domain/JsonParseInterface;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/game/sdk/domain/JsonParseInterface;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_0

    move-object v1, v2

    .line 104
    :goto_0
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/JsonParseInterface;

    .line 95
    .local v1, "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/game/sdk/domain/JsonParseInterface;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 97
    .end local v1    # "jobj":Lcom/game/sdk/domain/JsonParseInterface;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_1
    move-object v1, v2

    .line 104
    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
