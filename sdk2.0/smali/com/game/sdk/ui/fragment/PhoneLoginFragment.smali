.class public Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "PhoneLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;,
        Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;,
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

.field private pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

.field private pw_select_user:Landroid/widget/PopupWindow;

.field private quickRegisterLayout:Landroid/widget/LinearLayout;

.field private quickRegisterTv:Landroid/widget/TextView;

.field private registerIv:Landroid/widget/ImageView;

.field private runnable:Ljava/lang/Runnable;

.field private secondes:I

.field sendDialog:Lcom/game/sdk/view/CustomDialog;

.field private serverLayout:Landroid/widget/RelativeLayout;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;

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
    .line 62
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 538
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$1;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    .line 550
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->codeRefresh()V

    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;I)V
    .locals 0

    .prologue
    .line 550
    iput p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Lcom/game/sdk/domain/UserInfo;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    return v0
.end method

.method private codeRefresh()V
    .locals 4

    .prologue
    .line 558
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->secondes:I

    .line 559
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$3;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$3;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    .line 579
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    return-void
.end method


# virtual methods
.method public getCommonUserInfosByType(I)Ljava/util/List;
    .locals 6
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
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 347
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 356
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 357
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserLoginInfoByType(I)Ljava/util/List;

    move-result-object v1

    .line 359
    :cond_1
    return-object v1

    .line 348
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v4, p1, :cond_3

    .line 349
    new-instance v2, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 350
    .local v2, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 351
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v4, v2, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 352
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v2    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 363
    const/4 v1, 0x0

    .line 365
    .local v1, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 368
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 377
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 378
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v1, Lcom/game/sdk/domain/UserInfo;

    .line 382
    .restart local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_1
    return-object v1

    .line 369
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v5, p1, :cond_1

    .line 370
    new-instance v3, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 371
    .local v3, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 372
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 373
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v3    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_2
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "phone_login_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 146
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->initTheme()V

    .line 147
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->inflater:Landroid/view/LayoutInflater;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 152
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 154
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto :goto_0
.end method

.method public initTheme()V
    .locals 12

    .prologue
    .line 166
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 167
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    :cond_0
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v9, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 171
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v9, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 172
    .local v5, "headColor":Ljava/lang/String;
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v9, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 173
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v9, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 174
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v9, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 176
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 177
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 178
    .local v0, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 180
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 181
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 182
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 183
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v9, "#00000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 194
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 195
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 196
    .local v2, "btnBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    .line 199
    .local v8, "validateBg":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 200
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 201
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "validateBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 205
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serverLayout:Landroid/widget/RelativeLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 208
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 209
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :cond_4
    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 213
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->registerIv:Landroid/widget/ImageView;

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    :cond_5
    return-void

    .line 185
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_6
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 186
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 189
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 190
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v9, "#00000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 118
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 119
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 120
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u8fdb\u5165\u6e38\u620f"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 121
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 122
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 123
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 124
    const-string v0, "more_account_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 125
    const-string v0, "login_user_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    .line 126
    const-string v0, "validate_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    .line 127
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    .line 128
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    .line 129
    const-string v0, "phone_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLogo:Landroid/widget/ImageView;

    .line 131
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 132
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 133
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->serverLayout:Landroid/widget/RelativeLayout;

    .line 134
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->registerIv:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x10

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "get_validate_btn"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 220
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "username":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u7528\u6237\u540d/\u624b\u673a\u53f7"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    .end local v5    # "username":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v5    # "username":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v7}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 228
    new-instance v7, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;

    invoke-direct {v7, p0, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V

    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    .end local v5    # "username":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "into_game_btn"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_b

    .line 231
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v7}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 232
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginUserEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 237
    .restart local v5    # "username":Ljava/lang/String;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "password":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u7528\u6237\u540d/\u624b\u673a\u53f7"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 244
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_5
    const-string v7, "[\u4e00-\u9fa5]"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 249
    .local v3, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v13, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 250
    :cond_6
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v13, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 254
    :cond_8
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d16\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_9
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v7, :cond_a

    .line 259
    new-instance v7, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v7}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 262
    :cond_a
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v5, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 263
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v2, v7, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 265
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v7}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 267
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v7}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v7

    invoke-virtual {v7, v5, v12}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    .local v0, "isSend":Z
    if-eqz v0, :cond_c

    .line 271
    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 272
    new-instance v7, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;

    invoke-direct {v7, p0, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V

    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    .end local v0    # "isSend":Z
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "pat":Ljava/util/regex/Pattern;
    .end local v5    # "username":Ljava/lang/String;
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "change_account_tv"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 280
    sput v10, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 281
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v7, v9}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0

    .line 274
    .restart local v0    # "isSend":Z
    .restart local v2    # "password":Ljava/lang/String;
    .restart local v3    # "pat":Ljava/util/regex/Pattern;
    .restart local v5    # "username":Ljava/lang/String;
    :cond_c
    sput v9, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 275
    new-instance v7, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)V

    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 285
    .end local v0    # "isSend":Z
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "pat":Ljava/util/regex/Pattern;
    .end local v5    # "username":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "quick_register_layout"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_e

    .line 286
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v7, v10}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0

    .line 289
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "more_account_layout"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 290
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 291
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 293
    :cond_f
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    if-eqz v7, :cond_10

    .line 294
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 298
    :cond_10
    invoke-virtual {p0, v12}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getCommonUserInfosByType(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    .line 300
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 303
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    if-nez v7, :cond_11

    .line 304
    new-instance v7, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-direct {v7, v8, v9}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    .line 307
    :cond_11
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/16 v8, 0x154

    invoke-static {v7, v8}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    .line 308
    .local v4, "pwidth":I
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-nez v7, :cond_12

    .line 309
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "layout"

    const-string v10, "login_user_list"

    invoke-static {v8, v9, v10}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 310
    const/4 v9, 0x0

    .line 309
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 311
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "id"

    const-string v9, "lv_pw"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 312
    .local v1, "lv_pw":Landroid/widget/ListView;
    invoke-virtual {v1, v12}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 313
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    new-instance v7, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;

    invoke-direct {v7, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    const/4 v9, 0x1

    invoke-direct {v7, v6, v4, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    .line 327
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 333
    .end local v1    # "lv_pw":Landroid/widget/ListView;
    .end local v6    # "view":Landroid/view/View;
    :goto_2
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 334
    neg-int v9, v4

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v10

    add-int/2addr v9, v10

    .line 333
    invoke-virtual {v7, v8, v9, v12}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 330
    :cond_12
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->initDataList(Ljava/util/List;)V

    .line 331
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v7}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onDestroy()V

    .line 587
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 588
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 589
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    return-void
.end method
