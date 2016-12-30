.class public Lcom/game/sdk/ui/QuickLoginActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;,
        Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;
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
    .line 37
    const/16 v0, 0x3e8

    sput v0, Lcom/game/sdk/ui/QuickLoginActivity;->SEND_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I

    .line 246
    new-instance v0, Lcom/game/sdk/ui/QuickLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/QuickLoginActivity$1;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->runnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/QuickLoginActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I

    return v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/QuickLoginActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z

    return v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/QuickLoginActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/QuickLoginActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->timeNumber:I

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/QuickLoginActivity;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->isSendSms:Z

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/NoticeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/NoticeDialog;->dismiss()V

    .line 285
    :cond_1
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "message_quick_login"

    return-object v0
.end method

.method public initData()V
    .locals 6

    .prologue
    .line 102
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 104
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLogo:Landroid/widget/ImageView;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 109
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v2, v4, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 111
    .local v2, "headColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 113
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

    .line 115
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 118
    .local v3, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 128
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 121
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

    .line 124
    .end local v3    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 125
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
    .line 68
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 69
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 75
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u4e00\u952e\u767b\u5f55\u4e2d"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    .line 77
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x1a4

    invoke-static {p0, v2}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    const/16 v2, 0xc8

    invoke-static {p0, v2}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 80
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    const-string v2, "other_login_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->otherLoginTv:Landroid/widget/TextView;

    .line 87
    const-string v2, "quick_login_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->quickLoginLayout:Landroid/widget/RelativeLayout;

    .line 88
    const-string v2, "bg_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->bgLayout:Landroid/widget/RelativeLayout;

    .line 89
    const-string v2, "common_title_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLayout:Landroid/widget/LinearLayout;

    .line 90
    const-string v2, "message_title_logo"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/QuickLoginActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->titleLogo:Landroid/widget/ImageView;

    .line 91
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->otherLoginTv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->quickLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "SMS_SEND_ACTIOIN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "mFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;)V

    iput-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    .line 97
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v5, "other_login_tv"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/QuickLoginActivity;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 134
    sput v10, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 135
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v5, "quick_login_layout"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/QuickLoginActivity;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 141
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->hasSimCard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 144
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity;->runnable:Ljava/lang/Runnable;

    sget v8, Lcom/game/sdk/ui/QuickLoginActivity;->SEND_TIME:I

    int-to-long v8, v8

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    new-instance v7, Landroid/content/Intent;

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, "itSend":Landroid/content/Intent;
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 149
    .local v4, "mSendPI":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 151
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\u63a5\u53d7\u53f7\u7801---"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->mtCode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "---\u4e0a\u884c\u9a8c\u8bc1\u7801---"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 154
    .local v6, "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v4    # "mSendPI":Landroid/app/PendingIntent;
    .end local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "itSend":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 154
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    .restart local v4    # "mSendPI":Landroid/app/PendingIntent;
    .restart local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "itSend":Landroid/content/Intent;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, "text":Ljava/lang/String;
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->mtCode:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 158
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "mSendPI":Landroid/app/PendingIntent;
    .end local v6    # "divideContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "itSend":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    goto :goto_1
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
    .line 289
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity;->mReceiver:Lcom/game/sdk/ui/QuickLoginActivity$MyServiceReceiver;

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->closeDialog()V

    .line 292
    return-void
.end method

.method public toLoginActivity()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/QuickLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    .line 272
    return-void
.end method
