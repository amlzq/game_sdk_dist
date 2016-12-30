.class Lcom/game/sdk/adapter/GamePackageAdapter$1;
.super Ljava/lang/Object;
.source "GamePackageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/GamePackageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/GamePackageAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

    iput p2, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->val$pos:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/game/sdk/adapter/GamePackageAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "gameId"

    iget-object v1, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageAdapter;->gamePackageList:Ljava/util/List;
    invoke-static {v1}, Lcom/game/sdk/adapter/GamePackageAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->val$pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/GamePackage;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackage;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/game/sdk/adapter/GamePackageAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/game/sdk/adapter/GamePackageAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
