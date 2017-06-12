.class Lcom/game/sdk/adapter/ScoreStoreAdapter$1;
.super Ljava/lang/Object;
.source "ScoreStoreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/ScoreStoreAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/ScoreStoreAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;->this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v4, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;->this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    # getter for: Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->access$0(Lcom/game/sdk/adapter/ScoreStoreAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "pwd":Ljava/lang/String;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 114
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gamebox://?act=GoodTypeActivity&pwd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 117
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u79ef\u5206\u5546\u57ceURI---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;->this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    # getter for: Lcom/game/sdk/adapter/ScoreStoreAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->access$0(Lcom/game/sdk/adapter/ScoreStoreAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 112
    .restart local v2    # "pwd":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 121
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter$1;->this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    iget-object v4, v4, Lcom/game/sdk/adapter/ScoreStoreAdapter;->downListener:Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;

    invoke-interface {v4}, Lcom/game/sdk/adapter/ScoreStoreAdapter$DownApkListener;->gameBoxDown()V

    goto :goto_1
.end method
