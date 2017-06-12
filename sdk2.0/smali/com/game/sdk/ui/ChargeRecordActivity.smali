.class public Lcom/game/sdk/ui/ChargeRecordActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ChargeRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;
    }
.end annotation


# static fields
.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;


# instance fields
.field private allGameLayout:Landroid/widget/RelativeLayout;

.field private allGameSelectIcon:Landroid/widget/ImageView;

.field private backIv:Landroid/widget/ImageView;

.field private chargeFailTv:Landroid/widget/TextView;

.field private chargeSelectIv:Landroid/widget/ImageView;

.field private chargeSuccessTv:Landroid/widget/TextView;

.field private chargeWaitPayTv:Landroid/widget/TextView;

.field private currentGameLayout:Landroid/widget/RelativeLayout;

.field private currentGameSelectIcon:Landroid/widget/ImageView;

.field private currentSelect:I

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private gameChargeLayout:Landroid/widget/LinearLayout;

.field private gameSelectPop:Landroid/widget/PopupWindow;

.field private isAllGame:I

.field private orderState:I

.field private payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

.field private payResultListener:Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;

.field private paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

.field private titleLayout:Landroid/widget/RelativeLayout;

.field private titleTv:Landroid/widget/TextView;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;

.field private waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/ui/ChargeRecordActivity;->isnowpay:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    .line 24
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ChargeRecordActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSelectIv:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public changeFragment(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isAll"    # Z

    .prologue
    .line 181
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 187
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 241
    return-void

    .line 201
    :pswitch_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 202
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 204
    :cond_4
    new-instance v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isAllGame"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v1, "orderState"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 214
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 215
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 217
    :cond_5
    new-instance v1, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "isAllGame"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "orderState"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->paySuccessFragment:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 226
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    if-eqz v1, :cond_6

    if-nez p2, :cond_6

    .line 227
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 229
    :cond_6
    new-instance v1, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "isAllGame"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "orderState"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 234
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payFailFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFailFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public defaultFragment()V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 170
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 171
    new-instance v1, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isAllGame"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v1, "orderState"

    iget v2, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/ChargeRecordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 176
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->waitPayFragment:Lcom/game/sdk/ui/fragment/ChargeRecordFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "fysdk_activity_charge_record"

    return-object v0
.end method

.method public getPayResultListener()Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payResultListener:Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 160
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 97
    return-void
.end method

.method public initViews()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 103
    iput v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    .line 104
    iput v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    .line 106
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->defaultFragment()V

    .line 108
    const-string v1, "id"

    const-string v2, "common_title_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleLayout:Landroid/widget/RelativeLayout;

    .line 109
    const-string v1, "id"

    const-string v2, "game_charge_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameChargeLayout:Landroid/widget/LinearLayout;

    .line 110
    const-string v1, "charge_select_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSelectIv:Landroid/widget/ImageView;

    .line 112
    const-string v1, "charge_wait_pay_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeWaitPayTv:Landroid/widget/TextView;

    .line 113
    const-string v1, "charge_success_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSuccessTv:Landroid/widget/TextView;

    .line 114
    const-string v1, "charge_fail_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeFailTv:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "charge_record_popwindow"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 117
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "popView":Landroid/view/View;
    const-string v1, "id"

    const-string v2, "sdk_current_game_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 119
    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentGameLayout:Landroid/widget/RelativeLayout;

    .line 121
    const-string v1, "id"

    const-string v2, "sdk_all_game_layout"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->allGameLayout:Landroid/widget/RelativeLayout;

    .line 124
    const-string v1, "id"

    const-string v2, "sdk_current_selected_icon"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentGameSelectIcon:Landroid/widget/ImageView;

    .line 126
    const-string v1, "id"

    const-string v2, "sdk_all_selected_icon"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->allGameSelectIcon:Landroid/widget/ImageView;

    .line 128
    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->backIv:Landroid/widget/ImageView;

    .line 129
    const-string v1, "title_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdk_current_game_charge_text"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charge_record_text"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameChargeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentGameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->allGameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeWaitPayTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSuccessTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeFailTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    .line 145
    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 144
    iput-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    .line 146
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/game/sdk/ui/ChargeRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/ChargeRecordActivity$1;-><init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 153
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 333
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payResultListener:Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;->payResult(IILandroid/content/Intent;)V

    .line 334
    const-string v0, "ChargeRecordActivity---onActivityResult--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->finish()V

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "game_charge_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 251
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSelectIv:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "select_up_icon"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "sdk_current_game_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 255
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentGameSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->allGameSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk_current_game_charge_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "charge_record_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 264
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "sdk_all_game_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 265
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->allGameSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentGameSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk_all_game_charge_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "charge_record_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->gameSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 275
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "sdk_current_game_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 276
    iput v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    .line 277
    iget v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    invoke-virtual {p0, v0, v4}, Lcom/game/sdk/ui/ChargeRecordActivity;->changeFragment(IZ)V

    .line 280
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "sdk_all_game_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 281
    iput v4, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->isAllGame:I

    .line 282
    iget v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    invoke-virtual {p0, v0, v4}, Lcom/game/sdk/ui/ChargeRecordActivity;->changeFragment(IZ)V

    .line 285
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_wait_pay_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 286
    iput v3, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    .line 288
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeWaitPayTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "account_register_color"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 289
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSuccessTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeFailTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 291
    invoke-virtual {p0, v4, v3}, Lcom/game/sdk/ui/ChargeRecordActivity;->changeFragment(IZ)V

    .line 292
    iput v4, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    .line 295
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_success_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 296
    iput v6, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    .line 298
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeWaitPayTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 299
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSuccessTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "account_register_color"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeFailTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/ChargeRecordActivity;->changeFragment(IZ)V

    .line 302
    iput v7, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    .line 305
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "charge_fail_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 306
    iput v5, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->orderState:I

    .line 308
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeWaitPayTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSuccessTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "white2"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeFailTv:Landroid/widget/TextView;

    const-string v1, "color"

    const-string v2, "account_register_color"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 311
    invoke-virtual {p0, v5, v3}, Lcom/game/sdk/ui/ChargeRecordActivity;->changeFragment(IZ)V

    .line 312
    iput v5, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->currentSelect:I

    .line 314
    :cond_8
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
    .line 325
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 326
    const-string v0, "ChargeRecordActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 319
    const-string v0, "ChargeRecordActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 320
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public setPayResultListener(Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;)V
    .locals 0
    .param p1, "payResultListener"    # Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->payResultListener:Lcom/game/sdk/ui/ChargeRecordActivity$PayResultListener;

    .line 87
    return-void
.end method
