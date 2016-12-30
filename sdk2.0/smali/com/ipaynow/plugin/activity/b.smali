.class final Lcom/ipaynow/plugin/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic g:Lcom/ipaynow/plugin/activity/a;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/b;->g:Lcom/ipaynow/plugin/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/b;->g:Lcom/ipaynow/plugin/activity/a;

    iget-object v0, v0, Lcom/ipaynow/plugin/activity/a;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
