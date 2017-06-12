.class public final Lcom/ipaynow/plugin/conf/PluginConfig;
.super Ljava/lang/Object;


# static fields
.field public static context:Landroid/content/Context;

.field public static f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "$change"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtOrderTimeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "outputType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtOrderDetail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtCharset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtLimitPay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtSubAppId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "mhtReserved"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "consumerId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->f:Ljava/util/ArrayList;

    const-string v1, "consumerName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
