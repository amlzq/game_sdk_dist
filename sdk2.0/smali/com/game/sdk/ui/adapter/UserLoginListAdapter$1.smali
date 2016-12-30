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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    # getter for: Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->access$0(Lcom/game/sdk/ui/adapter/UserLoginListAdapter;)Landroid/content/Context;

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

    .line 78
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v0, v0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->userLoginInfos:Ljava/util/List;

    iget v1, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/adapter/UserLoginListAdapter$1;->this$0:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
