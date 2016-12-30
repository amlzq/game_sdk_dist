.class final Lcom/unionpay/mobile/android/upviews/d$c;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/upviews/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upviews/d;


# direct methods
.method private constructor <init>(Lcom/unionpay/mobile/android/upviews/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/d$c;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/mobile/android/upviews/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upviews/d$c;-><init>(Lcom/unionpay/mobile/android/upviews/d;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/d$c;->a:Lcom/unionpay/mobile/android/upviews/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/d;->a(Lcom/unionpay/mobile/android/upviews/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
