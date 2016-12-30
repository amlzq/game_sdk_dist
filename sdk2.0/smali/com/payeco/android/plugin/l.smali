.class final Lcom/payeco/android/plugin/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/payeco/android/plugin/util/l;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u5931\u8d25!"

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V

    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u5931\u8d25!"

    # invokes: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setWebViewSetting()V

    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->access$2(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf8"

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/l;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V

    goto :goto_0
.end method
