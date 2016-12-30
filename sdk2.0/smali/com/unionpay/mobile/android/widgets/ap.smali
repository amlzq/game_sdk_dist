.class final Lcom/unionpay/mobile/android/widgets/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ao;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ap;->a:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ap;->a:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ao;->a(Lcom/unionpay/mobile/android/widgets/ao;)Lcom/unionpay/mobile/android/widgets/ao$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ap;->a:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ao;->a(Lcom/unionpay/mobile/android/widgets/ao;)Lcom/unionpay/mobile/android/widgets/ao$a;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ap;->a:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/widgets/ao$a;->a(Lcom/unionpay/mobile/android/widgets/y;)V

    :cond_0
    return-void
.end method
