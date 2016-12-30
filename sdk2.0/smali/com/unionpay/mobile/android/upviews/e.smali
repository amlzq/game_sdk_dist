.class final Lcom/unionpay/mobile/android/upviews/e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upviews/d$d;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upviews/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/e;->a:Lcom/unionpay/mobile/android/upviews/d$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/e;->a:Lcom/unionpay/mobile/android/upviews/d$d;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/d$d;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/d;->b(Lcom/unionpay/mobile/android/upviews/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/e;->a:Lcom/unionpay/mobile/android/upviews/d$d;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/d$d;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/d;->a(Lcom/unionpay/mobile/android/upviews/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/e;->a:Lcom/unionpay/mobile/android/upviews/d$d;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/d$d;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/d;->c(Lcom/unionpay/mobile/android/upviews/d;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/e;->a:Lcom/unionpay/mobile/android/upviews/d$d;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/d$d;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/d;->c(Lcom/unionpay/mobile/android/upviews/d;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method
