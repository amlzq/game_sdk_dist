.class final Lcom/payeco/android/plugin/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/l;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/l;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/l;->a(Lcom/payeco/android/plugin/f/l;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/l;->b(Lcom/payeco/android/plugin/f/l;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5bc6\u7801\u4f4d\u6570\u4e0d\u5b9c\u5c0f\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/l;->b(Lcom/payeco/android/plugin/f/l;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f4d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payeco_keyboard_red_bg"

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/l;->c(Lcom/payeco/android/plugin/f/l;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/l;->dismiss()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/l;->d(Lcom/payeco/android/plugin/f/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/l;->a(Lcom/payeco/android/plugin/f/l;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v3, v1, v0}, Lcom/payeco/android/plugin/f/l;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/payeco/android/plugin/f/p;->a:Lcom/payeco/android/plugin/f/l;

    const/4 v0, 0x1

    const-string v2, "\u5bc6\u7801\u52a0\u5bc6\u51fa\u9519"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/payeco/android/plugin/f/l;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
