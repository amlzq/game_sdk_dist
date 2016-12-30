.class final Lcom/ipaynow/plugin/api/a;
.super Landroid/os/AsyncTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/String;

    aget-object v0, p1, v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/core/DevPlatTradeClient;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/HashMap;

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$1(Landroid/app/ProgressDialog;)V

    if-nez p1, :cond_0

    const-string v0, "\u7f51\u7edc\u73af\u5883\u4e0d\u901a\u7545,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    # invokes: Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$2(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "responseMsg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$2(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "channelDispOrder"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "channelDispOrder"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    # invokes: Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "mhtOrderName"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "mhtOrderName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mhtOrderNo"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "mhtOrderNo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mhtOrderAmt"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "mhtOrderAmt"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mhtOrderStartTime"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "mhtOrderStartTime"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appId"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "appId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mhtName"

    const-string v0, "mhtName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nowPayOrderNo"

    const-string v0, "nowPayOrderNo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channelDispOrder"

    const-string v0, "channelDispOrder"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orderSysReserveSign"

    const-string v0, "orderSysReserveSign"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payChannelType"

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$3()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "payChannelType"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$4()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "PAY_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$4()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
