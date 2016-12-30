.class final Lcom/payeco/android/plugin/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/payeco/android/plugin/util/l;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/s;

.field private final synthetic b:Lcom/payeco/android/plugin/util/b;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/s;Lcom/payeco/android/plugin/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    iput-object p2, p0, Lcom/payeco/android/plugin/t;->b:Lcom/payeco/android/plugin/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    const-string v1, "\u4e0e\u670d\u52a1\u5668\u901a\u8baf\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u624b\u673a\u7f51\u7edc\u662f\u5426\u6253\u5f00"

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "payeco_plugin_pay_fail"

    invoke-static {v1, v2, v3}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    invoke-static {v2}, Lcom/payeco/android/plugin/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$5(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$6(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$6(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "errCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$6(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/payeco/android/plugin/c/b;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "payeco_plugin_pay_fail"

    invoke-static {v1, v2, v3}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$6(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setNewKeyAndConfig(Lorg/json/JSONObject;)V
    invoke-static {v1, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$7(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->updateNum:I
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$11(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$12(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->updateNum:I
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$11(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v2}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "payeco_plugin_pay_verify_fail"

    invoke-static {v2, v3, v4}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v1, v6

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v2}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "payeco_plugin_pay_fail"

    invoke-static {v2, v3, v4}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v2}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v2

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$8(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$9(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$10(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v2}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "payeco_plugin_pay_verify_fail"

    invoke-static {v2, v3, v4}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/payeco/android/plugin/t;->b:Lcom/payeco/android/plugin/util/b;

    iget-object v1, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getHttpParams()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$4(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/b;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->b:Lcom/payeco/android/plugin/util/b;

    invoke-virtual {v0, p0}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/l;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setWebViewSetting()V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$2(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf8"

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payeco/android/plugin/u;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/u;-><init>(Lcom/payeco/android/plugin/t;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->baiduLocation()V
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$13(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/t;->a:Lcom/payeco/android/plugin/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/s;->a(Lcom/payeco/android/plugin/s;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_2
.end method
