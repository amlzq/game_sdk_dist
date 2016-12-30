.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_SUCCESS:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v2, "PE010"

    iget-object v3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/a;->ai:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/NotifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
