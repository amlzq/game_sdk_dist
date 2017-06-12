.class Lcom/game/sdk/ui/ScoreStoreActivity$1;
.super Landroid/os/Handler;
.source "ScoreStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ScoreStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ScoreStoreActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ScoreStoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    .line 77
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

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->loadMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$2(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->stopAnimation()V

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$3(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->addNewList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$3(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/adapter/ScoreStoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->loadMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$2(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$4(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$5(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-static {v1, v3}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$4(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$6(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noDataIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$7(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->stopAnimation()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noDataIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$7(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$6(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$6(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    const-string v2, "no_more_text"

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/ScoreStoreActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->noMoreTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$6(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-static {v1, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/ScoreStoreActivity$1;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-static {v2, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
