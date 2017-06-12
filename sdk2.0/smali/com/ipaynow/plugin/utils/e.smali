.class public final Lcom/ipaynow/plugin/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static q(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;
    .locals 10

    new-instance v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-direct {v2}, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/ipaynow/plugin/utils/StringUtils;->parseFormString(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v6, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
