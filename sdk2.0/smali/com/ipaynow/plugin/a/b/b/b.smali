.class public final Lcom/ipaynow/plugin/a/b/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/a/b/a/a;


# instance fields
.field private aE:Ljava/util/ArrayList;

.field private ba:Lcom/ipaynow/plugin/a/b/c/b;

.field private bb:Landroid/view/View$OnClickListener;

.field private bc:I

.field private bd:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->ba:Lcom/ipaynow/plugin/a/b/c/b;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->aE:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->bb:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/ipaynow/plugin/a/b/b/b;->bc:I

    iput v1, p0, Lcom/ipaynow/plugin/a/b/b/b;->bd:I

    iput-object p1, p0, Lcom/ipaynow/plugin/a/b/b/b;->aE:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->bc:I

    iput-object p2, p0, Lcom/ipaynow/plugin/a/b/b/b;->bb:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Context;)Landroid/view/ViewGroup;
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/a/b/c/b;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->ba:Lcom/ipaynow/plugin/a/b/c/b;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ipaynow/plugin/a/b/b/b;->ba:Lcom/ipaynow/plugin/a/b/c/b;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/a/b/c/b;->i()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/ipaynow/plugin/a/b/b/b;->ba:Lcom/ipaynow/plugin/a/b/c/b;

    invoke-virtual {v2, v0}, Lcom/ipaynow/plugin/a/b/c/b;->a(I)Lcom/ipaynow/plugin/a/b/c/c;

    move-result-object v2

    new-instance v3, Lcom/ipaynow/plugin/view/c;

    invoke-direct {v3, p2, v2}, Lcom/ipaynow/plugin/view/c;-><init>(Landroid/content/Context;Lcom/ipaynow/plugin/a/b/c/c;)V

    invoke-virtual {v3, v7}, Lcom/ipaynow/plugin/view/c;->setFocusable(Z)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/b/b/b;->bb:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Lcom/ipaynow/plugin/view/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v4

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/a/b/c/b;

    iget v1, p0, Lcom/ipaynow/plugin/a/b/b/b;->bd:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/a/b/c/b;->a(I)Lcom/ipaynow/plugin/a/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->bd:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/ipaynow/plugin/a/b/b/b;->bc:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/ipaynow/plugin/a/b/b/b;->bc:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/ipaynow/plugin/a/b/b/b;->bd:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0
.end method
