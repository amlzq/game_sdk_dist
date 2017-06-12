.class Lcom/game/sdk/ui/GamePackageDetailActivity$1;
.super Landroid/os/Handler;
.source "GamePackageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->stopAnimation()V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$3(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->addNewList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$3(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->loadMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$4(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$5(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-static {v1, v3}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$4(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$6(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noDataIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$7(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->stopAnimation()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noDataIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$7(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$6(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$6(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    const-string v2, "no_more_text"

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/GamePackageDetailActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$6(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-static {v1, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$1;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-static {v2, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
