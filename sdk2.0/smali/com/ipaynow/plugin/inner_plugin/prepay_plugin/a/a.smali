.class public Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;
.super Ljava/lang/Object;


# static fields
.field private static loading:Landroid/app/ProgressDialog;

.field private static params:Ljava/util/HashMap;

.field private static visitor:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->loading:Landroid/app/ProgressDialog;

    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->params:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sput-object p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    sput-object p2, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->params:Ljava/util/HashMap;

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->loading:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u4f20\u5165\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    sget-object v1, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u70b9\u5361\u652f\u4ed8\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/b;

    invoke-direct {v0, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/b;-><init>(B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->loading:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_UNKNOWN:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/a/a;->visitor:Landroid/app/Activity;

    return-object v0
.end method
