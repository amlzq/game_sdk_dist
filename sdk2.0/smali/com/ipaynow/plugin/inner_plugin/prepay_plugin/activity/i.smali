.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->c(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/a/c/c;->dismiss()V

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u9009\u62e9\u5361\u91d1\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->f(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->g(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    return-void
.end method
