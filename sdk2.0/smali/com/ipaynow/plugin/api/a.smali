.class public final Lcom/ipaynow/plugin/api/a;
.super Lcom/ipaynow/plugin/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    const-class v3, Lcom/ipaynow/plugin/presenter/PayMethodActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PRE_SIGN_STR"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/core/b/a;->h()Lcom/ipaynow/plugin/core/b/a;

    move-result-object v3

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->clearAll()V

    sput-object p1, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ipaynow"

    const-string v2, "\u672a\u8fdb\u884c\u63d2\u4ef6\u521d\u59cb\u5316"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "\u5df2\u5b8c\u6210\u63d2\u4ef6\u521d\u59cb\u5316\u65b9\u6cd5"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "main"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u8bf7\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u63d2\u4ef6"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u4e3b\u7ebf\u7a0b\u8c03\u7528\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "\u4e3b\u7ebf\u7a0b\u8c03\u7528\u9a8c\u8bc1\u6210\u529f"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :cond_3
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isAddAllPermission()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, p1}, Lcom/ipaynow/plugin/core/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u8bf7\u5728AndroidManifest\u4e2d\u6dfb\u52a0\u6240\u9700\u6743\u9650"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u6743\u9650\u9a8c\u8bc1\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "\u6743\u9650\u9a8c\u8bc1\u6821\u9a8c\u6210\u529f"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    :cond_5
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isUsePreSignTools()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isAddMustRequestParams()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u5fc5\u586b\u53c2\u6570\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u5fc5\u586b\u53c2\u6570\u9a8c\u8bc1\u6210\u529f"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/e;->q(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u652f\u4ed8\u4fe1\u606f\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u8bf7\u6c42\u4e32\u8f6c\u6362\u5931\u8d25"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u8bf7\u6c42\u4e32\u8f6c\u6362\u6210\u529f"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    :cond_9
    instance-of v0, p2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iput-object p2, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    :cond_a
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isUsePreSignTools()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    :goto_2
    if-nez v0, :cond_15

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    goto :goto_2

    :cond_c
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderName:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    goto :goto_2

    :cond_d
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderType:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v0, v1

    goto :goto_2

    :cond_e
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtCurrencyType:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v0, v1

    goto :goto_2

    :cond_f
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v1

    goto :goto_2

    :cond_10
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderDetail:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v0, v1

    goto :goto_2

    :cond_11
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtOrderStartTime:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    goto :goto_2

    :cond_12
    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->notifyUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v0, v1

    goto :goto_2

    :cond_13
    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->mhtCharset:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_2

    :cond_14
    move v0, v2

    goto :goto_2

    :cond_15
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-virtual {v4, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setRequestParams(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V

    const-string v0, "13"

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.tencent.mm"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v5, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    new-instance v0, Lcom/ipaynow/plugin/b/c/a;

    invoke-direct {v0}, Lcom/ipaynow/plugin/b/c/a;-><init>()V

    new-instance v0, Lcom/ipaynow/plugin/b/d/a;

    invoke-direct {v0}, Lcom/ipaynow/plugin/b/d/a;-><init>()V

    new-instance v6, Lcom/ipaynow/plugin/b/b/a;

    invoke-direct {v6}, Lcom/ipaynow/plugin/b/b/a;-><init>()V

    sget-object v0, Lcom/ipaynow/plugin/b/a/b;->ANDROID:Lcom/ipaynow/plugin/b/a/b;

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->a(Lcom/ipaynow/plugin/b/a/b;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-le v0, v7, :cond_18

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->g(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "android.permission.READ_PHONE_STATE"

    aput-object v8, v7, v1

    const/16 v8, 0x7b

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_3
    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->i(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->k(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->l(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->m(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->j(Landroid/content/Context;)Lcom/ipaynow/plugin/b/a/a;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->a(Lcom/ipaynow/plugin/b/a/a;)V

    invoke-static {}, Lcom/ipaynow/plugin/b/d/a;->S()Lcom/ipaynow/plugin/b/a/c;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->a(Lcom/ipaynow/plugin/b/a/c;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->setAppName(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->setAppVersion(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->o(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->p(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->n(Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Lcom/ipaynow/plugin/manager/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ipaynow/plugin/b/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setDeviceInfo(Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u672a\u6dfb\u52a0\u8be5\u652f\u4ed8\u6e20\u9053\u5b50\u5305"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE012:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE012:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u6dfb\u52a0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v2, v2, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6e20\u9053\u5b50\u5305"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-static {p1}, Lcom/ipaynow/plugin/b/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ipaynow/plugin/b/b/a;->g(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/plugin/core/b/a;->m()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u6dfb\u52a0\u89c6\u56fe\u63a7\u4ef6\u5b50\u5305/\u6216\u4f20\u5165\u975e\u7a7a\u652f\u4ed8\u6e20\u9053\u6807\u8bc6"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE013:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE013:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isCheckClient()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5fae\u4fe1\u5ba2\u6237\u7aef\u672a\u5b89\u88c5"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    :cond_1d
    :goto_4
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPaySupportVersionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;

    invoke-static {p1}, Lcom/ipaynow/plugin/core/b/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isCheckClient()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v3, v3, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "QQ\u5ba2\u6237\u7aef\u672a\u5b89\u88c5"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPayInstalledFlag(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "\u5fae\u4fe1\u5ba2\u6237\u7aef\u5df2\u5b89\u88c5"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatInstalledFlag(Z)V

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPayInstalledFlag(Z)V

    :cond_20
    :goto_5
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPaySupportVersionFlag(Z)V

    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setWechatPluginPaySupportVersionFlag(Z)V

    invoke-virtual {v4}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isSoLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/ipaynow/plugin/manager/b/a;->x()Lcom/ipaynow/plugin/manager/b/a;

    invoke-static {}, Lcom/ipaynow/plugin/manager/b/a;->y()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/ipaynow/plugin/utils/f;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/utils/f;-><init>(Landroid/content/Context;)V

    const-string v3, "\u52a0\u8f7d\u52a8\u6001\u5e93\u5931\u8d25"

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/utils/f;->r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/utils/f;->b(I)Lcom/ipaynow/plugin/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/f;->T()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4, v1}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setSoLibraryLoaded(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setQqPayInstalledFlag(Z)V

    goto :goto_5

    :cond_22
    invoke-virtual {v4, v2}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setSoLibraryLoaded(Z)V

    const-string v0, "\u6821\u9a8c\u901a\u8fc7"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/api/a;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    invoke-virtual {v4, v0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->setRequestParams(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method public final modelCallBack(Lcom/ipaynow/plugin/core/task/dto/TaskMessage;)V
    .locals 0

    return-void
.end method
