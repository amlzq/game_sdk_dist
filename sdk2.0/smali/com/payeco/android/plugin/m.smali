.class final Lcom/payeco/android/plugin/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/payeco/android/plugin/m;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->initPlugin()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$3(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "IsLoadUrlMode"

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getHttpGetParams()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setWebViewSetting()V

    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$2(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$2(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/payeco/android/plugin/util/b;

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {v0, v1, v2}, Lcom/payeco/android/plugin/util/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :try_start_1
    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getHttpParams()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$4(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/b;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v1, Lcom/payeco/android/plugin/n;

    invoke-direct {v1, p0, v0}, Lcom/payeco/android/plugin/n;-><init>(Lcom/payeco/android/plugin/m;Lcom/payeco/android/plugin/util/b;)V

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/l;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$8(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$9(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$10(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iget-object v1, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iget-object v2, p0, Lcom/payeco/android/plugin/m;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "payeco_plugin_pay_init_fail"

    invoke-static {v2, v3, v4}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
