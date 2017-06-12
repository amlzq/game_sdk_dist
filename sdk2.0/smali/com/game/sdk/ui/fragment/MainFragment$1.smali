.class Lcom/game/sdk/ui/fragment/MainFragment$1;
.super Landroid/os/Handler;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 165
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/adapter/MainModuleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/game/sdk/adapter/MainModuleAdapter;->addNewList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/adapter/MainModuleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/adapter/MainModuleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/CustomRoundImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$3(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 181
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 184
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    .line 189
    const-string v2, "drawable"

    const-string v3, "phone_bind_icon"

    .line 188
    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$7(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 193
    :cond_2
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->vipLevel:I

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->userMemberLevelIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "drawable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "member_level"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->vipLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 178
    :cond_3
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    goto/16 :goto_1

    .line 182
    :cond_4
    const-string v0, "0"

    goto :goto_2

    .line 185
    :cond_5
    const-string v0, "0"

    goto :goto_3

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
