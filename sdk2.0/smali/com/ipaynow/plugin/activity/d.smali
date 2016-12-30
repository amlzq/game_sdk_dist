.class final Lcom/ipaynow/plugin/activity/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic h:Lcom/ipaynow/plugin/activity/c;

.field private final synthetic i:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/activity/c;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/d;->h:Lcom/ipaynow/plugin/activity/c;

    iput-object p2, p0, Lcom/ipaynow/plugin/activity/d;->i:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Lcom/ipaynow/plugin/activity/g;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/d;->h:Lcom/ipaynow/plugin/activity/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/c;->a(Lcom/ipaynow/plugin/activity/c;)Lcom/ipaynow/plugin/activity/PayMethodActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ipaynow/plugin/activity/g;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    new-instance v2, Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/d;->h:Lcom/ipaynow/plugin/activity/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/c;->a(Lcom/ipaynow/plugin/activity/c;)Lcom/ipaynow/plugin/activity/PayMethodActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/d;->i:Ljava/util/HashMap;

    const-string v3, "payVoucher"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ipaynow/plugin/activity/g;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xc

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/activity/g;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
