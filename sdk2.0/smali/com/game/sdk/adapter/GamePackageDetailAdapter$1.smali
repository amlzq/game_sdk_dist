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
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 116
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "pwd":Ljava/lang/String;
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 120
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v5, v5, Lcom/game/sdk/domain/GamePackageDetail;->isPay:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v5, v5, Lcom/game/sdk/domain/GamePackageDetail;->goodsTypeId:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "{\"id\":\""

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v5, v5, Lcom/game/sdk/domain/GamePackageDetail;->goodsTypeId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \"title\":\"\u793c\u5305\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "tempData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "tempData->{\"goods_type_id\":\""

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/GamePackageDetail;

    iget-object v5, v5, Lcom/game/sdk/domain/GamePackageDetail;->goodsTypeId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \"title\":\"\u793c\u5305\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gamebox://?act=GoodListActivity&pwd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&phone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&username="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 129
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u79ef\u5206\u5546\u57ceURI---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v3    # "tempData":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 118
    .restart local v2    # "pwd":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v5, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    .restart local v1    # "mobile":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u670d\u52a1\u5668\u6570\u636e\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gamebox://?act=GiftDetailActivity&pwd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&phone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 138
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&username="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->gamePackageDetailList:Ljava/util/List;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$1(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->val$pos:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/domain/GamePackageDetail;

    iget v5, v5, Lcom/game/sdk/domain/GamePackageDetail;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 141
    .restart local v4    # "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6e38\u620f\u793c\u5305\u9886\u53d6URI---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    # getter for: Lcom/game/sdk/adapter/GamePackageDetailAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->access$0(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 148
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$1;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iget-object v5, v5, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->downListener:Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;

    invoke-interface {v5}, Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;->gameBoxDown()V

    goto/16 :goto_1
.end method
