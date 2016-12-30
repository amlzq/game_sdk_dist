.class final Lcom/unionpay/mobile/android/nocard/views/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/as;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/as;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bb;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bb;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/as;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bb;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/as;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bb;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bb;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->i(Lcom/unionpay/mobile/android/nocard/views/as;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;Ljava/lang/String;)V

    return-void
.end method
