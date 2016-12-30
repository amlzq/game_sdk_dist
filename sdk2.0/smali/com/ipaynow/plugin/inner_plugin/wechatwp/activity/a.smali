.class final Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic c:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->c:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/a;->c:Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechatwp/activity/WeChatNotifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
