.class Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;
.super Ljava/lang/Object;
.source "GamePackageDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/GamePackageDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/GamePackageDetailAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iput p2, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v3}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "pwd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gamebox://?act=GiftDetailActivity&pwd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 120
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v3}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/GamePackageDetail;

    iget v3, v3, Lcom/game/sdk/domain/GamePackageDetail;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 121
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620f\u793c\u5305\u9886\u53d6URI---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pwd":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iget-object v3, v3, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->downListener:Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;

    invoke-interface {v3}, Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;->gameBoxDown()V

    goto :goto_0
.end method
