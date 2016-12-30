.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

.field private final synthetic aC:Lcom/ipaynow/plugin/a/a/d;

.field private final synthetic aD:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Ljava/util/ArrayList;Lcom/ipaynow/plugin/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aD:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aC:Lcom/ipaynow/plugin/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->m(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/a;

    move-result-object v1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aD:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->n(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/a/c/a;->e(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->m(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/plugin/a/c/a;->m()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/a/c/c;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->f(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/PluginTools;->d(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aC:Lcom/ipaynow/plugin/a/a/d;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/a/a/d;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/ipaynow/plugin/conf/b;->Z:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->f(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v1

    sget v2, Lcom/ipaynow/plugin/conf/b;->Y:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/a/c/c;->setWidth(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/a/c/c;->setHeight(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ipaynow/plugin/a/c/c;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
