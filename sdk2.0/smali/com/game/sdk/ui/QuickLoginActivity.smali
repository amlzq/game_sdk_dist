.class public Lcom/game/sdk/ui/QuickLoginActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;,
        Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;,
        Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;,
        Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;
    }
.end annotation


# static fields
.field public static SEND_TIME:I


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private handler:Landroid/os/Handler;

.field private isSendSms:Z

.field loginDialog:Lcom/game/sdk/view/CustomDialog;

.field mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

.field noticeDialog:Lcom/game/sdk/view/NoticeDialog;

.field private otherLoginTv:Landroid/widget/TextView;

.field private quickLoginLayout:Landroid/widget/RelativeLayout;

.field runnable:Ljava/lang/Runnable;

.field private timeNumber:I

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x3e8

    sput v0, Lcom/game/sdk/ui/QuickLoginActivity;->SEND_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I

    .line 345
    new-instance v0, Lcom/game/sdk/ui/QuickLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/QuickLoginActivity$1;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->runnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/QuickLoginActivity;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/QuickLoginActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/NoticeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/NoticeDialog;->dismiss()V

    .line 514
    :cond_1
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "fysdk_activity_quick_login"

    return-object v0
.end method

.method public getSmsMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "smsString"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "sms":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 386
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 387
    .local v1, "rand":Ljava/util/Random;
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 388
    .local v0, "position":I
    aget-object v3, v2, v0

    .line 393
    .end local v0    # "position":I
    .end local v1    # "rand":Ljava/util/Random;
    .end local v2    # "sms":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 390
    .restart local v2    # "sms":[Ljava/lang/String;
    :cond_0
    const-string v3, "17386034522"

    goto :goto_0

    .line 393
    .end local v2    # "sms":[Ljava/lang/String;
    :cond_1
    const-string v3, "17386034522"

    goto :goto_0
.end method

.method public initData()V
    .locals 6

    .prologue
    .line 106
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 107
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v4, :cond_1

    .line 109
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLogo:Landroid/widget/ImageView;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v4, :cond_1

    .line 114
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 115
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v2, v4, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 117
    .local v2, "headColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 119
    .local v0, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 121
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 124
    .local v3, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 137
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "bgColor":Ljava/lang/String;
    .end local v2    # "headColor":Ljava/lang/String;
    .end local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    return-void

    .line 126
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v1    # "bgColor":Ljava/lang/String;
    .restart local v2    # "headColor":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 127
    .restart local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 130
    .end local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 131
    .restart local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 79
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->setOrientation()V

    .line 80
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 86
    const-string v1, "init quick login ------"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/game/sdk/view/CustomDialog;

    const-string v2, "\u6781\u901f\u6ce8\u518c\u4e2d"

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    .line 90
    const-string v1, "other_login_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->otherLoginTv:Landroid/widget/TextView;

    .line 91
    const-string v1, "quick_login_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->quickLoginLayout:Landroid/widget/RelativeLayout;

    .line 92
    const-string v1, "bg_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->bgLayout:Landroid/widget/RelativeLayout;

    .line 93
    const-string v1, "common_title_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    .line 94
    const-string v1, "message_title_logo"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLogo:Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->otherLoginTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->quickLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "mFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;)V

    iput-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    .line 101
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "other_login_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x2

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 175
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 176
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "quick_login_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 206
    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 207
    new-instance v0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;

    invoke-direct {v0, p0, v3, v3}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->setOrientation()V

    .line 154
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

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 525
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 526
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 527
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->closeDialog()V

    .line 528
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 518
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 520
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 521
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 143
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->setFinishOnTouchOutside(Z)V

    .line 148
    return-void
.end method

.method public setOrientation()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 157
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v1, v1, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/QuickLoginActivity;->setRequestedOrientation(I)V

    .line 160
    :cond_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v1, v1, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v1, v2, :cond_1

    .line 161
    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->setRequestedOrientation(I)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 166
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 167
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    return-void
.end method

.method public toLoginActivity()V
    .locals 2

    .prologue
    .line 497
    const/4 v1, 0x2

    sput v1, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    .line 501
    return-void
.end method
