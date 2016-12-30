.class final Lcom/unionpay/mobile/android/upviews/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/y;

.field final synthetic b:Lcom/unionpay/mobile/android/widgets/y;

.field final synthetic c:Lcom/unionpay/mobile/android/upviews/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upviews/a;Lcom/unionpay/mobile/android/widgets/y;Lcom/unionpay/mobile/android/widgets/y;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/c;->c:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/c;->a:Lcom/unionpay/mobile/android/widgets/y;

    iput-object p3, p0, Lcom/unionpay/mobile/android/upviews/c;->b:Lcom/unionpay/mobile/android/widgets/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/c;->c:Lcom/unionpay/mobile/android/upviews/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/upviews/a;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/c;->c:Lcom/unionpay/mobile/android/upviews/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/upviews/a;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/c;->c:Lcom/unionpay/mobile/android/upviews/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/upviews/a;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/c;->a:Lcom/unionpay/mobile/android/widgets/y;

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/ai;->a(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/c;->b:Lcom/unionpay/mobile/android/widgets/y;

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    return-void
.end method
