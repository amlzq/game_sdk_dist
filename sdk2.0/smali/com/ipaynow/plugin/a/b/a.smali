.class public final Lcom/ipaynow/plugin/a/b/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private aY:Lcom/ipaynow/plugin/a/b/a/a;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/a/b/a/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/plugin/a/b/a;->aY:Lcom/ipaynow/plugin/a/b/a/a;

    iput-object p2, p0, Lcom/ipaynow/plugin/a/b/a;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/a;->aY:Lcom/ipaynow/plugin/a/b/a/a;

    invoke-interface {v0}, Lcom/ipaynow/plugin/a/b/a/a;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/a;->aY:Lcom/ipaynow/plugin/a/b/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/a/b/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/a;->aY:Lcom/ipaynow/plugin/a/b/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/a/b/a/a;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/a;->aY:Lcom/ipaynow/plugin/a/b/a/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/b/a;->k:Landroid/content/Context;

    invoke-interface {v0, p1, v1}, Lcom/ipaynow/plugin/a/b/a/a;->a(ILandroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
