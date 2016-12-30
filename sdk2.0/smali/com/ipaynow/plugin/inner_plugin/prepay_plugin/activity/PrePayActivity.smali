.class public Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/util/HashMap;

.field private aA:Lcom/ipaynow/plugin/a/c/c;

.field private aj:Ljava/util/ArrayList;

.field private ak:Ljava/lang/String;

.field private al:Lcom/ipaynow/plugin/a/c/a;

.field private am:Lcom/ipaynow/plugin/a/c/c;

.field private an:Landroid/widget/Button;

.field private ao:Landroid/widget/Button;

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:Landroid/graphics/drawable/GradientDrawable;

.field private aw:Landroid/graphics/drawable/GradientDrawable;

.field private ax:Landroid/widget/EditText;

.field private ay:Landroid/widget/EditText;

.field private az:Landroid/widget/LinearLayout;

.field private loading:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->loading:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ak:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->al:Lcom/ipaynow/plugin/a/c/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->am:Lcom/ipaynow/plugin/a/c/c;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ap:I

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aq:I

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ar:I

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->as:I

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->at:I

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->au:I

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->av:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aw:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aA:Lcom/ipaynow/plugin/a/c/c;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->loading:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/ipaynow/plugin/conf/PluginConfig;->P:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ap:I

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->loading:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_UNKNOWN:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->finish()V

    return-void
.end method

.method private static b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->N:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v7, 0x3

    if-lt v0, v7, :cond_0

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const/4 v8, 0x2

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    sget-object v8, Lcom/ipaynow/plugin/conf/PluginConfig;->Q:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ipaynow/plugin/conf/PluginConfig;->R:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->S:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aq:I

    return-void
.end method

.method static synthetic c(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aA:Lcom/ipaynow/plugin/a/c/c;

    return-object v0
.end method

.method private static c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->N:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v7, 0x3

    if-lt v0, v7, :cond_0

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const/4 v8, 0x2

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    sget-object v8, Lcom/ipaynow/plugin/conf/PluginConfig;->Q:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ipaynow/plugin/conf/PluginConfig;->R:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->S:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method static synthetic c(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->as:I

    return-void
.end method

.method static synthetic d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    return-object v0
.end method

.method private static d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v3, Lcom/ipaynow/plugin/conf/PluginConfig;->M:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ar:I

    return-void
.end method

.method static synthetic e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->au:I

    return-void
.end method

.method static synthetic f(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->as:I

    return v0
.end method

.method static synthetic f(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->at:I

    return-void
.end method

.method static synthetic g(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ar:I

    return v0
.end method

.method static synthetic h(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->am:Lcom/ipaynow/plugin/a/c/c;

    return-object v0
.end method

.method static synthetic i(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->au:I

    return v0
.end method

.method static synthetic j(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->at:I

    return v0
.end method

.method static synthetic k(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aw:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic l(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->av:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic m(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Lcom/ipaynow/plugin/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->al:Lcom/ipaynow/plugin/a/c/a;

    return-object v0
.end method

.method static synthetic n(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ap:I

    return v0
.end method

.method static synthetic o(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aq:I

    return v0
.end method

.method static synthetic r(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ak:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    if-nez p3, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v1, "PE002"

    const-string v2, "\u7f51\u7edc\u901a\u8baf\u8d85\u65f6"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "respMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PREPAY_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "funcode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "nowPayOrderNo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "nowPayOrderNo"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "orderSysReserveSign="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "orderSysReserveSign"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "payChannelType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "payChannelType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    const-string v1, "dotCardInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/DevPlatTradeClient;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "mhtName"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mhtOrderName"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "mhtOrderAmt"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v6, "\u5546\u6237\u540d\u79f0 "

    invoke-direct {v5, v6, v0}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v5, "\u8ba2\u5355\u7f16\u53f7"

    invoke-direct {v0, v5, v1}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v1, "\u8ba2\u5355\u540d\u79f0 "

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ipaynow/plugin/a/b/c/a;

    const-string v1, "\u4ed8\u6b3e\u91d1\u989d "

    invoke-direct {v0, v1, v3}, Lcom/ipaynow/plugin/a/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aj:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    sget v3, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->av:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->av:Landroid/graphics/drawable/GradientDrawable;

    sget v3, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x2

    sget v3, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aw:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aw:Landroid/graphics/drawable/GradientDrawable;

    sget v3, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/conf/PluginConfig;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/ipaynow/plugin/a/a/d;

    invoke-direct {v2, p0, v4}, Lcom/ipaynow/plugin/a/a/d;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/ipaynow/plugin/a/a/d;->f()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ipaynow/plugin/a/a/d;->g()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->setContentView(Landroid/view/View;)V

    new-instance v3, Lcom/ipaynow/plugin/a/c/a;

    new-instance v5, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/i;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-direct {v3, p0, v0, v5}, Lcom/ipaynow/plugin/a/c/a;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ipaynow/plugin/a/c/c;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/a/c/c;-><init>(Lcom/ipaynow/plugin/a/c/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aA:Lcom/ipaynow/plugin/a/c/c;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->aA:Lcom/ipaynow/plugin/a/c/c;

    new-instance v3, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/a/c/c;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v3, Lcom/ipaynow/plugin/a/c/a;

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ap:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v5, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/f;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-direct {v3, p0, v0, v5}, Lcom/ipaynow/plugin/a/c/a;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->al:Lcom/ipaynow/plugin/a/c/a;

    new-instance v0, Lcom/ipaynow/plugin/a/c/c;

    iget-object v3, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->al:Lcom/ipaynow/plugin/a/c/a;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/a/c/c;-><init>(Lcom/ipaynow/plugin/a/c/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->am:Lcom/ipaynow/plugin/a/c/c;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->am:Lcom/ipaynow/plugin/a/c/c;

    new-instance v3, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/g;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/g;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-virtual {v0, v3}, Lcom/ipaynow/plugin/a/c/c;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    sget v3, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    sget v6, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    const-string v7, "\u9009\u62e9\u5361\u7c7b\u578b"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    const/4 v7, 0x1

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    sget v7, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    const/4 v7, 0x2

    sget v8, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-static {v7, v8}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    new-instance v7, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v7, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    new-instance v8, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/b;

    invoke-direct {v8, p0, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/b;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Lcom/ipaynow/plugin/a/a/d;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->an:Landroid/widget/Button;

    invoke-virtual {v7, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v7, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    const-string v9, "\u9009\u62e9\u5361\u91d1\u989d"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    const/4 v9, 0x1

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    sget v9, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    const/4 v9, 0x2

    sget v10, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-static {v9, v10}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    new-instance v9, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v9, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    new-instance v10, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;

    invoke-direct {v10, p0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/c;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Ljava/util/ArrayList;Lcom/ipaynow/plugin/a/a/d;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ao:Landroid/widget/Button;

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->az:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    sget v2, Lcom/ipaynow/plugin/conf/a;->black:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    const/4 v2, 0x2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u5361\u53f7"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    sget-object v2, Lcom/ipaynow/plugin/conf/c;->ad:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    sget v3, Lcom/ipaynow/plugin/conf/a;->black:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    const/4 v3, 0x2

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    const-string v3, "\u8bf7\u8f93\u5165\u5361\u5bc6"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    sget-object v3, Lcom/ipaynow/plugin/conf/c;->ad:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ax:Landroid/widget/EditText;

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->ay:Landroid/widget/EditText;

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u8ba4\u652f\u4ed8"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v2, 0x2

    sget v3, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-static {v2, v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;

    invoke-direct {v2, p0, v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/d;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
