.class Lcom/game/sdk/adapter/CompAignAdapter$1;
.super Ljava/lang/Object;
.source "CompAignAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/CompAignAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/CompAignAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/CompAignAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    iput p2, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->val$pos:I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    # getter for: Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/game/sdk/adapter/CompAignAdapter;->access$0(Lcom/game/sdk/adapter/CompAignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    # getter for: Lcom/game/sdk/adapter/CompAignAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/game/sdk/adapter/CompAignAdapter;->access$1(Lcom/game/sdk/adapter/CompAignAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    # getter for: Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/game/sdk/adapter/CompAignAdapter;->access$0(Lcom/game/sdk/adapter/CompAignAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->val$pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/CompAign;

    iget v1, v1, Lcom/game/sdk/domain/CompAign;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->this$0:Lcom/game/sdk/adapter/CompAignAdapter;

    # getter for: Lcom/game/sdk/adapter/CompAignAdapter;->compaignInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/game/sdk/adapter/CompAignAdapter;->access$0(Lcom/game/sdk/adapter/CompAignAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/game/sdk/adapter/CompAignAdapter$1;->val$pos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/CompAign;

    iget v1, v1, Lcom/game/sdk/domain/CompAign;->type:I

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/ui/MainActivity;->detailFragment(Ljava/lang/String;I)V

    .line 98
    :cond_0
    return-void
.end method
