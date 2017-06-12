.class Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;
.super Ljava/lang/Object;
.source "UserLoginListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iput p2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->type:I
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$0(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$1(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    iget v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/MobileInfoUtil;->deleteUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->type:I
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$0(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$1(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    iget v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v1, v0}, Lcom/game/sdk/utils/AccountInfoUtil;->deleteUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$1(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v1

    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    iget v2, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    iget v1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->closeListener:Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;

    invoke-interface {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;->popWindowClose()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
