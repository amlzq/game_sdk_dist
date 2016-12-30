.class final Lcom/payeco/android/plugin/f/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/s;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/s;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/s;->f(Lcom/payeco/android/plugin/f/s;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/s;->g(Lcom/payeco/android/plugin/f/s;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/payeco/android/plugin/f/s;->b()Lcom/payeco/android/plugin/bridge/JsBridge;

    move-result-object v0

    invoke-static {}, Lcom/payeco/android/plugin/f/s;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->startRecord(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zxf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/s;->b(Lcom/payeco/android/plugin/f/s;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/s;->c(Lcom/payeco/android/plugin/f/s;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/u;->a:Lcom/payeco/android/plugin/f/s;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/s;->d(Lcom/payeco/android/plugin/f/s;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
