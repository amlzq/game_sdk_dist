.class public Lcom/ipaynow/plugin/utils/MerchantTools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePreSignMessage(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setUsePreSignToolsFlag(Z)V

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/ipaynow/plugin/utils/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    goto :goto_1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
