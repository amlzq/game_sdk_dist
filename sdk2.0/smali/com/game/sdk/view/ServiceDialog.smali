.class public Lcom/game/sdk/view/ServiceDialog;
.super Landroid/app/Dialog;
.source "ServiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/view/ServiceDialog$NoUnderlineSpan;
    }
.end annotation


# instance fields
.field private callLayout:Landroid/widget/RelativeLayout;

.field private callPhoneTv:Landroid/widget/TextView;

.field private firstQQTv:Landroid/widget/TextView;

.field private kefu:[Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field public scale:F

.field private secondQQTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;F)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "scale"    # F

    .prologue
    .line 48
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    .line 50
    iput p2, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    .line 51
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 9

    .prologue
    .line 80
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "layout"

    const-string v8, "service_dialog"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "call_phone_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    .line 85
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "call_layout"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callLayout:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num1_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    .line 89
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v7, "id"

    const-string v8, "kefu_qq_num2_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0, v3}, Lcom/game/sdk/view/ServiceDialog;->setContentView(Landroid/view/View;)V

    .line 93
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    iget v6, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    float-to-double v4, v6

    .line 107
    .local v4, "ratio":D
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v6, :cond_0

    .line 108
    iget v6, p0, Lcom/game/sdk/view/ServiceDialog;->scale:F

    float-to-double v4, v6

    .line 111
    :cond_0
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v6, v6, Lcom/game/sdk/domain/InItInfo;->vertical:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 112
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 116
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 118
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v6}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    const/16 v6, 0x11

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    .line 96
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "ratio":D
    :cond_2
    iget-object v6, p0, Lcom/game/sdk/view/ServiceDialog;->callPhoneTv:Landroid/widget/TextView;

    const-string v7, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public kefuQQ(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "qqNumString"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v4, "id"

    const-string v5, "call_phone_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEmulator--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_0

    .line 136
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v4, "id"

    const-string v5, "kefu_qq_num1_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 146
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/game/sdk/view/ServiceDialog;->startQQ(Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v4, "id"

    const-string v5, "kefu_qq_num2_tv"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 151
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v6, :cond_2

    .line 152
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/game/sdk/view/ServiceDialog;->startQQ(Ljava/lang/String;)V

    .line 155
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/game/sdk/view/ServiceDialog;->initView()V

    .line 57
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->kefuQQ:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/game/sdk/view/ServiceDialog;->kefuQQ(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v3, "drawable"

    const-string v4, "no_qq_service_num_icon"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->firstQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->kefu:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->secondQQTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public startQQ(Ljava/lang/String;)V
    .locals 5
    .param p1, "qqNum"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->setPackageNames(Landroid/content/Context;)V

    .line 176
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/CheckUtil;->isQQAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    const-string v2, "\u8bf7\u5b89\u88c5QQ"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/game/sdk/view/ServiceDialog;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
