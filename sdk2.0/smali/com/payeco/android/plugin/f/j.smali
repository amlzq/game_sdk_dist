.class final Lcom/payeco/android/plugin/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/d;

.field private final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/d;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    iput-object p2, p0, Lcom/payeco/android/plugin/f/j;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, ""

    iget-object v1, p0, Lcom/payeco/android/plugin/f/j;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->c(Lcom/payeco/android/plugin/f/d;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "payeco_keyboard_red_bg"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v1}, Lcom/payeco/android/plugin/f/d;->d(Lcom/payeco/android/plugin/f/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->c(Lcom/payeco/android/plugin/f/d;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u70b9\u51fb\u8f93\u5165\u6709\u6548\u671f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->e(Lcom/payeco/android/plugin/f/d;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/d;->f(Lcom/payeco/android/plugin/f/d;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CVN\u4f4d\u6570\u4e0d\u5b9c\u5c0f\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/d;->f(Lcom/payeco/android/plugin/f/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f4d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payeco_keyboard_red_bg"

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/f/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v0}, Lcom/payeco/android/plugin/f/d;->g(Lcom/payeco/android/plugin/f/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/d;->dismiss()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/d;->b(Lcom/payeco/android/plugin/f/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/d;->h(Lcom/payeco/android/plugin/f/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v2}, Lcom/payeco/android/plugin/f/d;->e(Lcom/payeco/android/plugin/f/d;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v3}, Lcom/payeco/android/plugin/f/d;->i(Lcom/payeco/android/plugin/f/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    invoke-static {v3}, Lcom/payeco/android/plugin/f/d;->e(Lcom/payeco/android/plugin/f/d;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v3, v1, v0}, Lcom/payeco/android/plugin/f/d;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/payeco/android/plugin/f/j;->a:Lcom/payeco/android/plugin/f/d;

    const-string v0, "cvn2\u52a0\u5bc6\u51fa\u9519"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    invoke-static {v4, v0, v1, v2}, Lcom/payeco/android/plugin/f/d;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
