.class Lcom/game/sdk/ui/GamePackageActivity$2;
.super Ljava/lang/Object;
.source "GamePackageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/GamePackageActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    const-class v2, Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "gameId"

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/GamePackage;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackage;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$2;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/GamePackageActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
