.class public final Lcom/ipaynow/plugin/activity/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic e:Lcom/ipaynow/plugin/activity/PayMethodActivity;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/activity/c;)Lcom/ipaynow/plugin/activity/PayMethodActivity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x1

    aget-object v2, p1, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/ipaynow/plugin/core/DevPlatTradeClient;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    check-cast p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v2, "PE002"

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "responseMsg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    aget-object v3, v0, v3

    aget-object v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v3, "PE010"

    const-string v0, "responseMsg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v2, "PE003"

    const-string v3, "\u73b0\u5728\u652f\u4ed8\u63a5\u53e3\u542f\u52a8\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "payChannelType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->r:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "com.ipaynow.plugin.inner_plugin.wechatwp.activity.WeChatNotifyActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const-class v2, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "payVoucher"

    const-string v0, "payVoucher"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mhtOrderNo"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->c(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_1
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->m:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    const-string v0, "com.unionpay.UPPayAssistEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const-class v1, Lcom/unionpay/uppay/PayActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "payVoucher"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/ipaynow/plugin/conf/PluginConfig;->n:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->startPayByJAR(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_2
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->o:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_2
    const-string v0, "com.alipay.sdk.app.PayTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/ipaynow/plugin/activity/d;

    invoke-direct {v0, p0, p1}, Lcom/ipaynow/plugin/activity/d;-><init>(Lcom/ipaynow/plugin/activity/c;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/activity/d;->start()V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_8
    :goto_3
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->s:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_3
    const-string v0, "com.ipaynow.plugin.inner_plugin.wechatpg.activity.WXPayActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".wxapi.WXPayEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "appId"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mhtOrderNo"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->c(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payVoucher"

    const-string v0, "payVoucher"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_9
    :goto_4
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->t:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_4
    const-string v0, "com.baidu.paysdk.api.BaiduPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v2

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const-string v0, "payVoucher"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/ipaynow/plugin/activity/e;

    invoke-direct {v4, p0}, Lcom/ipaynow/plugin/activity/e;-><init>(Lcom/ipaynow/plugin/activity/c;)V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_a
    :goto_5
    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->u:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_5
    const-string v0, "com.ipaynow.plugin.inner_plugin.qqpay.activity.QQPayActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const-class v2, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "appId"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->b(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mhtOrderNo"

    iget-object v3, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->c(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payVoucher"

    const-string v0, "payVoucher"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230QQ\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230\u5fae\u4fe1\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230\u94f6\u8054\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230\u652f\u4ed8\u5b9d\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230\u5fae\u4fe1\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string v1, "ipaynow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u627e\u5230\u767e\u5ea6\u5305"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v7, v7}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/c;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
