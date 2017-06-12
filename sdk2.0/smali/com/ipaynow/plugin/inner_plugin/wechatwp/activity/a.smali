.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V

    invoke-static {}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->getInstance()Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE007:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/plugin/manager/route/MerchantRouteManager;->callMerchantFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
