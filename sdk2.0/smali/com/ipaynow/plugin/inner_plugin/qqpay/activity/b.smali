.class final Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/b;->o:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    const-string v3, "02"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/b;->o:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;

    iget-object v1, v1, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/b;->o:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;

    iget-object v0, v0, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/a;->m:Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/inner_plugin/qqpay/activity/QQPayActivity;->finish()V

    return-void
.end method
