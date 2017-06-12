.class public Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "PhoneLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$NoUnderlineSpan;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;
    }
.end annotation


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private changeAccountTv:Landroid/widget/TextView;

.field private currentUserInfo:Lcom/game/sdk/domain/UserInfo;

.field final handler:Landroid/os/Handler;

.field protected inflater:Landroid/view/LayoutInflater;

.field private intoGameBtn:Landroid/widget/Button;

.field intoGameDialog:Lcom/game/sdk/view/CustomDialog;

.field loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private loginUserEt:Landroid/widget/EditText;

.field private moreAccountLayout:Landroid/widget/LinearLayout;

.field noticeDialog:Lcom/game/sdk/view/NoticeDialog;

.field private patternCoder:Ljava/lang/String;

.field private pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

.field private pw_select_user:Landroid/widget/PopupWindow;

.field private quickRegisterLayout:Landroid/widget/LinearLayout;

.field private quickRegisterTv:Landroid/widget/TextView;

.field private registerIv:Landroid/widget/ImageView;

.field private runnable:Ljava/lang/Runnable;

.field private secondes:I

.field sendDialog:Lcom/game/sdk/view/CustomDialog;

.field private serverLayout:Landroid/widget/LinearLayout;

.field private serviceQQTv:Landroid/widget/TextView;

.field private serviceTelTv:Landroid/widget/TextView;

.field private smsContent:Ljava/lang/String;

.field private smsFilter:Landroid/content/IntentFilter;

.field private smsReceiver:Landroid/content/BroadcastReceiver;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userLoginInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userinfoSelect:Lcom/game/sdk/domain/UserInfo;

.field private validateBtn:Landroid/widget/Button;

.field private validateEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 140
    const-string v0, "(?<!\\d)\\d{4,10}(?!\\d)"

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->patternCoder:Ljava/lang/String;

    .line 886
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    .line 905
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)I
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    return v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;I)V
    .locals 0

    .prologue
    .line 905
    iput p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->codeRefresh()V

    return-void
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Lcom/game/sdk/domain/UserInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    return-object v0
.end method

.method private codeRefresh()V
    .locals 8

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "drawable"

    const-string v6, "border_line_btn"

    invoke-static {v0, v1, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 915
    .local v2, "borderLineBtn":I
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "color"

    const-string v6, "border_line_color"

    invoke-static {v0, v1, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 916
    .local v3, "borderLineColor":I
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "drawable"

    const-string v6, "border_line_gray"

    invoke-static {v0, v1, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 917
    .local v4, "borderLineGray":I
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "color"

    const-string v6, "line_color"

    invoke-static {v0, v1, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 918
    .local v5, "lineColor":I
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    .line 919
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;IIII)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    .line 936
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 937
    return-void
.end method

.method private patternCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "patternContent"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-object v2

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->patternCoder:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 401
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCommonUserInfosByType(I)Ljava/util/List;
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v6

    const-string v7, "is_first_mobile"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 551
    .local v2, "isFirst":Z
    if-eqz v2, :cond_0

    .line 553
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 554
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 565
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v6

    const-string v7, "is_first_mobile"

    invoke-virtual {v6, v7, v9}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    .end local v1    # "i":I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 569
    :cond_1
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/MobileInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 572
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 573
    :cond_3
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserLoginInfoByType()Ljava/util/List;

    move-result-object v3

    .line 575
    if-eqz v3, :cond_4

    .line 576
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_7

    .line 587
    .end local v1    # "i":I
    :cond_4
    return-object v3

    .line 555
    .restart local v1    # "i":I
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    :cond_5
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v6, v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v6, p1, :cond_6

    .line 556
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 557
    .local v4, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v6, v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 558
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v6, v6, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v6, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 559
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6, v4}, Lcom/game/sdk/utils/MobileInfoUtil;->insertUserInfoFromPublic(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 554
    .end local v4    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 578
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 579
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 578
    invoke-static {v7, v6, v9}, Lcom/game/sdk/utils/GameBox2SDKUtil;->exchangeUserInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    move-result-object v0

    .line 580
    .local v0, "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v6, v0}, Lcom/game/sdk/utils/GameBox2SDKUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V

    .line 581
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v7, v6}, Lcom/game/sdk/utils/MobileInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 576
    .end local v0    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 593
    .local v0, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userList:Ljava/util/List;

    .line 595
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 596
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 600
    .restart local v0    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_0
    return-object v0

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType()Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "phone_login_fragment"

    return-object v0
.end method

.method public getSmsInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v10, "pdus"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 353
    .local v4, "objs":[Ljava/lang/Object;
    array-length v10, v4

    move v8, v9

    :goto_0
    if-lt v8, v10, :cond_0

    .line 379
    return-void

    .line 353
    :cond_0
    aget-object v3, v4, v8

    .local v3, "obj":Ljava/lang/Object;
    move-object v5, v3

    .line 354
    check-cast v5, [B

    .line 355
    .local v5, "pdu":[B
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 357
    .local v6, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "message":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "message---"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "from":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "from---"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "\u6e38\u620f\u5408\u4f5c\u4e2d\u5fc3"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 364
    invoke-direct {p0, v2}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->patternCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 366
    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsContent:Ljava/lang/String;

    .line 368
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 369
    .local v7, "smsMessage":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v7, Landroid/os/Message;->what:I

    .line 370
    iget-object v11, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .end local v7    # "smsMessage":Landroid/os/Message;
    :cond_1
    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v11, v11, Lcom/game/sdk/domain/InItInfo;->mtCode:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 375
    new-instance v11, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;

    iget-object v12, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v12}, Lcom/game/sdk/utils/SystemUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, p0, v12, v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v9, [Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    .end local v0    # "code":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 194
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 196
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->initTheme()V

    .line 197
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->inflater:Landroid/view/LayoutInflater;

    .line 199
    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getCommonUserInfosByType(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userList:Ljava/util/List;

    .line 202
    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 204
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/MobileInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/MobileInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_6

    .line 219
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_2
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->qq:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 227
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670dQQ\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->qq:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_3
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$NoUnderlineSpan;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$NoUnderlineSpan;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    .line 233
    .local v0, "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/PhoneLoginFragment$NoUnderlineSpan;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 235
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 240
    .restart local v1    # "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 246
    .end local v0    # "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/PhoneLoginFragment$NoUnderlineSpan;
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_1
    :goto_4
    return-void

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto/16 :goto_0

    .line 214
    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto/16 :goto_1

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<a href=\'tel://400-796-6071\' style=\'text-decoration:none;\'>400-796-6071</a>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 243
    :cond_6
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public initTheme()V
    .locals 24

    .prologue
    .line 260
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v21, :cond_0

    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLogo:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    sget-object v22, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_0
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v21, :cond_5

    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 265
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 266
    .local v4, "bgColor":Ljava/lang/String;
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 267
    .local v12, "headColor":Ljava/lang/String;
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 268
    .local v5, "btnColor":Ljava/lang/String;
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 269
    .local v13, "noticeColor":Ljava/lang/String;
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 271
    .local v6, "changeFontColor":Ljava/lang/String;
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 273
    .local v3, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 276
    invoke-static {v12}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 277
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/GradientDrawable;

    .line 279
    .local v18, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v21, "#00000000"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 290
    .end local v3    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v18    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v15

    .line 294
    .local v15, "roundRadius":I
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 296
    .local v7, "fillColor":I
    const-string v21, "#979696"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, "fillColorPressed":I
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 300
    .local v10, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 301
    int-to-float v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 304
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 305
    .local v11, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 306
    int-to-float v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 308
    new-instance v17, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 311
    .local v17, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v14, 0x10100a7

    .line 312
    .local v14, "pressed":I
    const v20, 0x101009d

    .line 313
    .local v20, "window_focused":I
    const v9, 0x101009c

    .line 314
    .local v9, "focused":I
    const v16, 0x10100a1

    .line 316
    .local v16, "selected":I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v14, v21, v22

    const/16 v22, 0x1

    aput v20, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 317
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v14, v21, v22

    const/16 v22, 0x1

    neg-int v0, v9

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 318
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 319
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v9, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 320
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    neg-int v0, v9

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x2

    neg-int v0, v14

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/GradientDrawable;

    .line 325
    .local v19, "validateBg":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "#"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "#"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "#"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    .end local v7    # "fillColor":I
    .end local v8    # "fillColorPressed":I
    .end local v9    # "focused":I
    .end local v10    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v11    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v14    # "pressed":I
    .end local v15    # "roundRadius":I
    .end local v16    # "selected":I
    .end local v17    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v19    # "validateBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v20    # "window_focused":I
    :cond_2
    invoke-static {v13}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serverLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "#"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 334
    :cond_3
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "#"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :cond_4
    sget-object v21, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->registerIv:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    sget-object v22, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 343
    .end local v4    # "bgColor":Ljava/lang/String;
    .end local v5    # "btnColor":Ljava/lang/String;
    .end local v6    # "changeFontColor":Ljava/lang/String;
    .end local v12    # "headColor":Ljava/lang/String;
    .end local v13    # "noticeColor":Ljava/lang/String;
    :cond_5
    return-void

    .line 281
    .restart local v3    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v4    # "bgColor":Ljava/lang/String;
    .restart local v5    # "btnColor":Ljava/lang/String;
    .restart local v6    # "changeFontColor":Ljava/lang/String;
    .restart local v12    # "headColor":Ljava/lang/String;
    .restart local v13    # "noticeColor":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/GradientDrawable;

    .line 282
    .restart local v18    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 285
    .end local v18    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/GradientDrawable;

    .line 286
    .restart local v18    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v21, "#00000000"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 152
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 153
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 154
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u8fdb\u5165\u6e38\u620f"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 155
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 156
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 157
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 158
    const-string v0, "more_account_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 159
    const-string v0, "login_user_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    .line 160
    const-string v0, "validate_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    .line 161
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    .line 162
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    .line 163
    const-string v0, "phone_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLogo:Landroid/widget/ImageView;

    .line 165
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 166
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 167
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serverLayout:Landroid/widget/LinearLayout;

    .line 168
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->registerIv:Landroid/widget/ImageView;

    .line 169
    const-string v0, "service_tel_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 170
    const-string v0, "service_qq_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsFilter:Landroid/content/IntentFilter;

    .line 179
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsFilter:Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsFilter:Landroid/content/IntentFilter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 182
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/ui/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "get_validate_btn"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 411
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "username":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 413
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u8bf7\u8f93\u5165\u7528\u6237\u540d/\u624b\u673a\u53f7"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    .end local v7    # "username":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v7    # "username":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v9}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 419
    new-instance v9, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;

    invoke-direct {v9, p0, v7}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 422
    .end local v7    # "username":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "into_game_btn"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 423
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v9}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 424
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 429
    .restart local v7    # "username":Ljava/lang/String;
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "password":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 432
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u8bf7\u8f93\u5165\u7528\u6237\u540d/\u624b\u673a\u53f7"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 436
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_5
    const-string v9, "[\u4e00-\u9fa5]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 441
    .local v5, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x10

    if-gt v9, v10, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 442
    :cond_6
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x10

    if-gt v9, v10, :cond_8

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 446
    :cond_8
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d16\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v9, v10}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_9
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v9, :cond_a

    .line 451
    new-instance v9, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v9}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v9, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 454
    :cond_a
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v7, v9, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 455
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v4, v9, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 457
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v9}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 459
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v9}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 462
    .local v2, "isSend":Z
    if-eqz v2, :cond_c

    .line 463
    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 464
    new-instance v9, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;

    invoke-direct {v9, p0, v7}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    .end local v2    # "isSend":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "pat":Ljava/util/regex/Pattern;
    .end local v7    # "username":Ljava/lang/String;
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "change_account_tv"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_d

    .line 472
    const/4 v9, 0x3

    sput v9, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 473
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0

    .line 466
    .restart local v2    # "isSend":Z
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v5    # "pat":Ljava/util/regex/Pattern;
    .restart local v7    # "username":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x2

    sput v9, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 467
    new-instance v9, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 477
    .end local v2    # "isSend":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "pat":Ljava/util/regex/Pattern;
    .end local v7    # "username":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "quick_register_layout"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_e

    .line 478
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0

    .line 481
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "more_account_layout"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_f

    .line 482
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 483
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 531
    :cond_f
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const-string v10, "quick_register_layout"

    invoke-virtual {p0, v10}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 532
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v9}, Lcom/game/sdk/utils/SystemUtil;->hasSimCard(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v9

    if-nez v9, :cond_0

    .line 533
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v9}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v9, :cond_0

    .line 534
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v9}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 535
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "intent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tel:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 537
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 538
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v9, v1}, Lcom/game/sdk/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 486
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_10
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getCommonUserInfosByType(I)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userList:Ljava/util/List;

    .line 488
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    .line 489
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userList:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 495
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    if-nez v9, :cond_11

    .line 496
    new-instance v9, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v11, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    .line 499
    :cond_11
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v9, p0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->setCloseListener(Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;)V

    .line 501
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/16 v10, 0x154

    invoke-static {v9, v10}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 502
    .local v6, "pwidth":I
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-nez v9, :cond_12

    .line 503
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v11, "layout"

    const-string v12, "login_user_list"

    invoke-static {v10, v11, v12}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 504
    const/4 v11, 0x0

    .line 503
    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 505
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "id"

    const-string v11, "lv_pw"

    invoke-static {v9, v10, v11}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 506
    .local v3, "lv_pw":Landroid/widget/ListView;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 507
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    new-instance v9, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$3;

    invoke-direct {v9, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$3;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 520
    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    const/4 v11, 0x1

    invoke-direct {v9, v8, v6, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    .line 521
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 527
    .end local v3    # "lv_pw":Landroid/widget/ListView;
    .end local v8    # "view":Landroid/view/View;
    :goto_3
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 528
    neg-int v11, v6

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/16 v13, 0x30

    invoke-static {v12, v13}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    .line 527
    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_2

    .line 524
    :cond_12
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->initDataList(Ljava/util/List;)V

    .line 525
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v9}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 941
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onDestroy()V

    .line 944
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 945
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 946
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 949
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->unRegisterReceiver()V

    .line 950
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 965
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 966
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 968
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method public popWindowClose()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 958
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 961
    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    :cond_0
    return-void
.end method
