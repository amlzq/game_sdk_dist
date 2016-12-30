.class Lcom/game/sdk/ui/fragment/CompAignFragment$2;
.super Ljava/lang/Object;
.source "CompAignFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/CompAignFragment;->initData()V
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
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 91
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/CompAign;

    iget v0, v1, Lcom/game/sdk/domain/CompAign;->id:I

    .line 93
    .local v0, "activityId":I
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$3(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$2;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/CompAign;

    iget v1, v1, Lcom/game/sdk/domain/CompAign;->type:I

    invoke-virtual {v2, v3, v1}, Lcom/game/sdk/ui/MainActivity;->detailFragment(Ljava/lang/String;I)V

    .line 95
    .end local v0    # "activityId":I
    :cond_0
    return-void
.end method
