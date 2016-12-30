.class final Lcom/payeco/android/plugin/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/d;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/i;->a:Lcom/payeco/android/plugin/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/f/i;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->e(Lcom/payeco/android/plugin/f/d;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
