.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

.field private final synthetic aD:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    iput-object p2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aD:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->o(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->n(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "cardCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->p(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aD:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->n(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->q(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->r(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v3}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "mhtOrderNo"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u5361\u53f7\u6216\u5bc6\u7801\u4e3a\u7a7a\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v0, v1, v2}, Lcom/ipaynow/plugin/view/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {v7, v8, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v6, v7}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Landroid/app/ProgressDialog;)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v6}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    const-string v7, "\u4ea4\u6613\u5904\u7406\u4e2d"

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v6}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    new-instance v6, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/j;

    iget-object v7, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {v6, v7, v9}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/j;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v8}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->s(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v4, v7, v0

    aput-object v5, v7, v10

    const/4 v0, 0x4

    aput-object v1, v7, v0

    const/4 v0, 0x5

    aput-object v2, v7, v0

    const/4 v0, 0x6

    aput-object v3, v7, v0

    invoke-virtual {v6, v7}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
