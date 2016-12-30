.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/a/c/c;->dismiss()V

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->i(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->j(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    return-void
.end method
