.class Lcom/game/sdk/ui/QuickLoginActivity$1;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/QuickLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 357
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v2, "SMS_SEND_ACTIOIN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v8, "itSend":Landroid/content/Intent;
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v5, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 360
    .local v4, "mSendPI":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 362
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const-string v9, ""

    .line 364
    .local v9, "upCode":Ljava/lang/String;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "user:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$1;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->smsMobileList:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/game/sdk/ui/QuickLoginActivity;->getSmsMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "smsMobile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u63a5\u53d7\u53f7\u7801---"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "---\u4e0a\u884c\u6ce8\u518c\u7801(\u5373\u6781\u901f\u6ce8\u518c\u7684\u8d26\u53f7)---"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v9}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 372
    .local v6, "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v1    # "smsMobile":Ljava/lang/String;
    .end local v4    # "mSendPI":Landroid/app/PendingIntent;
    .end local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "upCode":Ljava/lang/String;
    :goto_1
    return-void

    .line 372
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    .restart local v1    # "smsMobile":Ljava/lang/String;
    .restart local v4    # "mSendPI":Landroid/app/PendingIntent;
    .restart local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "itSend":Landroid/content/Intent;
    .restart local v9    # "upCode":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 373
    .local v3, "text":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v1    # "smsMobile":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "mSendPI":Landroid/app/PendingIntent;
    .end local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "upCode":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 377
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "runnable---error"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_1
.end method
