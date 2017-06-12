.class public Lcom/game/sdk/ui/adapter/UserLoginListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserLoginListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;
    }
.end annotation


# instance fields
.field public closeListener:Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;

.field protected inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private rl_delete:Landroid/widget/RelativeLayout;

.field private type:I

.field userLoginInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    iput p3, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->type:I

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->type:I

    return v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 59
    iget-object v1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout"

    const-string v5, "login_user_list_item"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    move-object p2, v1

    .line 81
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "login_user_name_tv"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "rl_delete"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->rl_delete:Landroid/widget/RelativeLayout;

    .line 95
    iget-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->rl_delete:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;-><init>(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-object p2
.end method

.method public initDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setCloseListener(Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->closeListener:Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;

    .line 41
    return-void
.end method
