.class final Lcom/unionpay/mobile/android/nocard/views/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unionpay/mobile/android/nocard/views/bc$a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bc$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bf;->b:Lcom/unionpay/mobile/android/nocard/views/bc$a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/bf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bf;->b:Lcom/unionpay/mobile/android/nocard/views/bc$a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    const-string v1, ""

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/bc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
