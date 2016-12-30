.class final Lcom/ipaynow/plugin/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

.field private final synthetic f:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/a;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    iput-object p2, p0, Lcom/ipaynow/plugin/activity/a;->f:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ipaynow/plugin/activity/a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/a;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    new-instance v2, Lcom/ipaynow/plugin/activity/b;

    invoke-direct {v2, p0}, Lcom/ipaynow/plugin/activity/b;-><init>(Lcom/ipaynow/plugin/activity/a;)V

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ipaynow/plugin/activity/a;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->d(Lcom/ipaynow/plugin/activity/PayMethodActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
