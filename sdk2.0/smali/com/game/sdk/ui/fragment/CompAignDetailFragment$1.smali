.class Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;
.super Landroid/os/Handler;
.source "CompAignDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/CompAignDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$1(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignTitleTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$2(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/game/sdk/domain/CompAignDetail;->img:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$3(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$4(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->bodyTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$5(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignStartDateTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$6(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignEndDateTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$7(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$1(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$8(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/CompAignDetail;->typeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$8(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1$1;-><init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
