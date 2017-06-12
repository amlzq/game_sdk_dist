.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->e(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/utils/BackgroundUtil;->getRunningTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/b;->t:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    iget-object v0, v0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
