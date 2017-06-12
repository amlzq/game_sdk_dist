.class public Lcom/game/sdk/ui/LoginoutActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "LoginoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;
    }
.end annotation


# instance fields
.field private bgLayout:Landroid/widget/LinearLayout;

.field private closeIv:Landroid/widget/ImageView;

.field private downGameBoxBtn:Landroid/widget/Button;

.field private leftIv:Landroid/widget/ImageView;

.field private loginOutBtn:Landroid/widget/Button;

.field private loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

.field private loginOutIv:Landroid/widget/ImageView;

.field private titleLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public downBoxApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v1, "game_box"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 400
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "other_game"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u5e94\u7528"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/service/DownOtherApkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 406
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public gameBoxDown(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    .line 264
    const-string v6, "com.game.sdk.service.DownGameBoxService"

    .line 266
    .local v6, "serviceName":Ljava/lang/String;
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v10, :cond_d

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v10, :cond_d

    .line 268
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/BoxInfo;->boxPackageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 270
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 271
    const/4 v10, 0x1

    if-ne p1, v10, :cond_0

    .line 272
    const-string v10, "gamebox://?act=MainActivity"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 273
    .local v8, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v10, 0x2

    if-ne p1, v10, :cond_5

    .line 277
    const-string v5, ""

    .line 278
    .local v5, "pwd":Ljava/lang/String;
    const-string v4, ""

    .line 279
    .local v4, "mobile":Ljava/lang/String;
    const-string v9, ""

    .line 280
    .local v9, "userName":Ljava/lang/String;
    const-string v2, ""

    .line 282
    .local v2, "gameName":Ljava/lang/String;
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 283
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 286
    :cond_1
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v10, :cond_2

    .line 287
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v10, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 288
    :goto_0
    if-nez v4, :cond_2

    .line 289
    const-string v4, ""

    .line 293
    :cond_2
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 294
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v9, v10, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 297
    :cond_3
    iget-object v10, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 298
    iget-object v10, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/LoginOutInfo;->gameName:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 300
    :try_start_0
    iget-object v10, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/LoginOutInfo;->gameName:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 306
    :cond_4
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "{\"iconUrl\":\""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/LoginOutInfo;->gameIcon:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\"name\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\"packageName\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/LoginOutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"url\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 306
    invoke-static {v10}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "tempData":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gamebox://?act=DownloadActivity&pwd="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&phone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&username="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 311
    .restart local v8    # "uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u63a8\u5e7fAPK\u4e0b\u8f7dURI---"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 312
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    .end local v2    # "gameName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mobile":Ljava/lang/String;
    .end local v5    # "pwd":Ljava/lang/String;
    .end local v7    # "tempData":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "userName":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 287
    .restart local v2    # "gameName":Ljava/lang/String;
    .restart local v4    # "mobile":Ljava/lang/String;
    .restart local v5    # "pwd":Ljava/lang/String;
    .restart local v9    # "userName":Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v10, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 315
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_7
    const-string v10, "\u4e0b\u8f7d\u5730\u5740\u6570\u636e\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 319
    .end local v2    # "gameName":Ljava/lang/String;
    .end local v4    # "mobile":Ljava/lang/String;
    .end local v5    # "pwd":Ljava/lang/String;
    .end local v9    # "userName":Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 320
    invoke-static {p0, v6}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 322
    new-instance v0, Ljava/io/File;

    const-string v10, "game_box"

    invoke-static {v10}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 324
    invoke-static {v0}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 325
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v10, :cond_5

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v10, :cond_5

    .line 326
    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 327
    new-instance v10, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;

    const-string v11, "game_box"

    sget-object v12, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v12, v12, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v12, v12, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;-><init>(Lcom/game/sdk/ui/LoginoutActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 330
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 331
    const-string v10, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p0, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 335
    :cond_a
    const-string v10, "game_box"

    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/game/sdk/ui/LoginoutActivity;->downBoxApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 338
    .end local v0    # "downFile":Ljava/io/File;
    :cond_b
    const-string v10, "\u5e94\u7528\u4e0b\u8f7d\u4e2d"

    invoke-static {p0, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 341
    :cond_c
    const-string v10, "\u76d2\u5b50\u4e0b\u8f7d\u5730\u5740\u6570\u636e\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 346
    :cond_d
    const-string v10, "\u76d2\u5b50\u4e0b\u8f7d\u5730\u5740\u6570\u636e\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "fysdk_activity_loginout"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 93
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->initTheme()V

    .line 95
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->leftIv:Landroid/widget/ImageView;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    :cond_0
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logout:Lcom/game/sdk/domain/LoginOutInfo;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logout:Lcom/game/sdk/domain/LoginOutInfo;

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    .line 101
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/LoginOutInfo;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/view/PicassoRoundTransform;

    invoke-direct {v1}, Lcom/game/sdk/view/PicassoRoundTransform;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 104
    :cond_1
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "open_game_box_text"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    return-void
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 110
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v8, :cond_1

    .line 111
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 112
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 113
    .local v6, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 114
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 116
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 117
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->bgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 118
    .local v0, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 121
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 122
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 124
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 136
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 137
    .local v2, "btnBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 140
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 141
    .local v5, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 144
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    .end local v1    # "bgColor":Ljava/lang/String;
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "btnColor":Ljava/lang/String;
    .end local v4    # "changeFontColor":Ljava/lang/String;
    .end local v5    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "headColor":Ljava/lang/String;
    :cond_1
    return-void

    .line 126
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v1    # "bgColor":Ljava/lang/String;
    .restart local v3    # "btnColor":Ljava/lang/String;
    .restart local v4    # "changeFontColor":Ljava/lang/String;
    .restart local v6    # "headColor":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 127
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v8, p0, Lcom/game/sdk/ui/LoginoutActivity;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 131
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 69
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->setOrientation()V

    .line 70
    return-void
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 76
    const-string v0, "left_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->leftIv:Landroid/widget/ImageView;

    .line 77
    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->closeIv:Landroid/widget/ImageView;

    .line 78
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->bgLayout:Landroid/widget/LinearLayout;

    .line 79
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->titleLayout:Landroid/widget/RelativeLayout;

    .line 80
    const-string v0, "login_out_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    .line 81
    const-string v0, "login_out_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    .line 82
    const-string v0, "down_game_box_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "close_iv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->finish()V

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "login_out_btn"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 193
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 194
    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 195
    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 197
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->loginoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->loginoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 200
    :cond_1
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->initActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 202
    :try_start_0
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->initActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0, v3}, Lcom/game/sdk/FYGameSDK;->setInitOk(Z)V

    .line 209
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/FYGameSDK;->recycle(I)V

    .line 210
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->finish()V

    .line 211
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 214
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "login_out_iv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->otherApkDown()V

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "down_game_box_btn"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->gameBoxDown(I)V

    .line 220
    :cond_5
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->setOrientation()V

    .line 161
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 411
    const-string v0, "LoginoutActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 412
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 413
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 153
    const-string v0, "LoginoutActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public otherApkDown()V
    .locals 5

    .prologue
    .line 353
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    if-eqz v3, :cond_5

    .line 355
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    const-string v3, "\u5e94\u7528\u5df2\u5b89\u88c5\uff0c\u8bf7\u76f4\u63a5\u4f7f\u7528"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->type:I

    if-nez v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/game/sdk/utils/CheckUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 364
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 379
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 370
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/LoginoutActivity;->gameBoxDown(I)V

    goto :goto_1

    .line 372
    :cond_4
    const-string v3, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_5
    const-string v3, "\u521d\u59cb\u5316\u6570\u636e\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 164
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 165
    .local v4, "scaleW":D
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 166
    .local v2, "scaleH":D
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v1, v1, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->setRequestedOrientation(I)V

    .line 168
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 169
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 171
    :cond_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v1, v1, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v1, v6, :cond_1

    .line 172
    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/LoginoutActivity;->setRequestedOrientation(I)V

    .line 173
    const-wide v4, 0x3feb333333333333L    # 0.85

    .line 174
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 179
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 180
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v2

    double-to-int v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 182
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    return-void
.end method
