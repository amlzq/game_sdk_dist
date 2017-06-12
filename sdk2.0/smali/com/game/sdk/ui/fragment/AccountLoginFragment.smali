.class public Lcom/game/sdk/ui/fragment/AccountLoginFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;,
        Lcom/game/sdk/ui/fragment/AccountLoginFragment$NoUnderlineSpan;,
        Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;
    }
.end annotation


# instance fields
.field private accountLoginLayout:Landroid/widget/LinearLayout;

.field autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

.field private bgLayout:Landroid/widget/RelativeLayout;

.field private changeAccountTv:Landroid/widget/TextView;

.field private currentUserInfo:Lcom/game/sdk/domain/UserInfo;

.field private forgetTv:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private intoGameBtn:Landroid/widget/Button;

.field intoGameDialog:Lcom/game/sdk/view/CustomDialog;

.field loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private moreAccountLayout:Landroid/widget/LinearLayout;

.field noticeDialog:Lcom/game/sdk/view/NoticeDialog;

.field private passWordEt:Landroid/widget/EditText;

.field private pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

.field private pw_select_user:Landroid/widget/PopupWindow;

.field private quickRegisterLayout:Landroid/widget/LinearLayout;

.field private quickRegisterTv:Landroid/widget/TextView;

.field private registerIv:Landroid/widget/ImageView;

.field private serverLayout:Landroid/widget/LinearLayout;

.field private serviceQQTv:Landroid/widget/TextView;

.field private serviceTelTv:Landroid/widget/TextView;

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

.field private userNameEt:Landroid/widget/EditText;

.field private userinfoSelect:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->handler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Lcom/game/sdk/domain/UserInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method


# virtual methods
.method public getCommonUserInfosByType()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserLoginInfoByType()Ljava/util/List;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_1

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 215
    .end local v0    # "i":I
    :cond_1
    return-object v1

    .line 209
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 210
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v3, v2}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 208
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastUserInfo()Lcom/game/sdk/domain/UserInfo;
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userList:Ljava/util/List;

    .line 223
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 224
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 228
    .restart local v0    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType()Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "fysdk_account_login_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 233
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 235
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->initTheme()V

    .line 237
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->inflater:Landroid/view/LayoutInflater;

    .line 239
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getCommonUserInfosByType()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userList:Ljava/util/List;

    .line 242
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getLastUserInfo()Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 244
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v2

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_5

    .line 260
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_2
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$NoUnderlineSpan;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$NoUnderlineSpan;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    .line 273
    .local v0, "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/AccountLoginFragment$NoUnderlineSpan;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 275
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 278
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 280
    .restart local v1    # "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 287
    .end local v0    # "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/AccountLoginFragment$NoUnderlineSpan;
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_1
    :goto_3
    return-void

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto :goto_0

    .line 255
    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto :goto_1

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 283
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public initTheme()V
    .locals 22

    .prologue
    .line 301
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v19, :cond_5

    .line 303
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLogo:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget-object v20, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    :cond_0
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 309
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 310
    .local v3, "bgColor":Ljava/lang/String;
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 311
    .local v11, "headColor":Ljava/lang/String;
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 312
    .local v4, "btnColor":Ljava/lang/String;
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 313
    .local v12, "noticeColor":Ljava/lang/String;
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 315
    .local v5, "changeFontColor":Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 317
    .local v2, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "#"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 320
    invoke-static {v11}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 321
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/GradientDrawable;

    .line 323
    .local v17, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v19, "#00000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 334
    .end local v2    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v17    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v14

    .line 338
    .local v14, "roundRadius":I
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "#"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 340
    .local v6, "fillColor":I
    const-string v19, "#979696"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 343
    .local v7, "fillColorPressed":I
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 344
    .local v9, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 345
    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 348
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 349
    .local v10, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 350
    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 352
    new-instance v16, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 355
    .local v16, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v13, 0x10100a7

    .line 356
    .local v13, "pressed":I
    const v18, 0x101009d

    .line 357
    .local v18, "window_focused":I
    const v8, 0x101009c

    .line 358
    .local v8, "focused":I
    const v15, 0x10100a1

    .line 360
    .local v15, "selected":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v13, v19, v20

    const/16 v20, 0x1

    aput v18, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 361
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v13, v19, v20

    const/16 v20, 0x1

    neg-int v0, v8

    move/from16 v21, v0

    aput v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 362
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 363
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 364
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    neg-int v0, v15

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    neg-int v0, v8

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x2

    neg-int v0, v13

    move/from16 v21, v0

    aput v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "#"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    .end local v6    # "fillColor":I
    .end local v7    # "fillColorPressed":I
    .end local v8    # "focused":I
    .end local v9    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v10    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "pressed":I
    .end local v14    # "roundRadius":I
    .end local v15    # "selected":I
    .end local v16    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v18    # "window_focused":I
    :cond_2
    invoke-static {v12}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serverLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "#"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 375
    :cond_3
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "#"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    :cond_4
    sget-object v19, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->registerIv:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget-object v20, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    .end local v3    # "bgColor":Ljava/lang/String;
    .end local v4    # "btnColor":Ljava/lang/String;
    .end local v5    # "changeFontColor":Ljava/lang/String;
    .end local v11    # "headColor":Ljava/lang/String;
    .end local v12    # "noticeColor":Ljava/lang/String;
    :cond_5
    return-void

    .line 325
    .restart local v2    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v3    # "bgColor":Ljava/lang/String;
    .restart local v4    # "btnColor":Ljava/lang/String;
    .restart local v5    # "changeFontColor":Ljava/lang/String;
    .restart local v11    # "headColor":Ljava/lang/String;
    .restart local v12    # "noticeColor":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/GradientDrawable;

    .line 326
    .restart local v17    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "#"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 329
    .end local v17    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/GradientDrawable;

    .line 330
    .restart local v17    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v19, "#00000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 144
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 145
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u8fdb\u5165\u6e38\u620f"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 147
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 148
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 149
    const-string v0, "account_login_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->accountLoginLayout:Landroid/widget/LinearLayout;

    .line 150
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 151
    const-string v0, "user_name_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    .line 152
    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    .line 153
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    .line 155
    const-string v0, "account_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLogo:Landroid/widget/ImageView;

    .line 156
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 157
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 158
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serverLayout:Landroid/widget/LinearLayout;

    .line 159
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->registerIv:Landroid/widget/ImageView;

    .line 161
    const-string v0, "forget_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->forgetTv:Landroid/widget/TextView;

    .line 162
    const-string v0, "more_account_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 164
    const-string v0, "service_tel_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 165
    const-string v0, "service_qq_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->forgetTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    new-instance v1, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "change_account_tv"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 389
    const/4 v8, 0x2

    sput v8, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 390
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "service_qq_tv"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 395
    const/4 v8, 0x0

    sput v8, Lcom/game/sdk/domain/GoagalInfo;->qqKefuFrom:I

    .line 396
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "quick_register_layout"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 401
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "into_game_btn"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 405
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v8}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 406
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v8, v9}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "username":Ljava/lang/String;
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "password":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 414
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {v8, v9}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 418
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v8, v9}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_6
    const-string v8, "[\u4e00-\u9fa5]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 423
    .local v4, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-gt v8, v9, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 424
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v8, v9}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-gt v8, v9, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 428
    :cond_9
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d16\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v8, v9}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_a
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v8, :cond_b

    .line 433
    new-instance v8, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v8}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 436
    :cond_b
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v6, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 437
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v3, v8, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 439
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v8}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 442
    new-instance v8, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "pat":Ljava/util/regex/Pattern;
    .end local v6    # "username":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "more_account_layout"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_d

    .line 445
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 446
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 496
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const-string v9, "forget_tv"

    invoke-virtual {p0, v9}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_e

    .line 497
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 500
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "id"

    const-string v11, "service_tel_tv"

    invoke-static {v9, v10, v11}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isEmulator--->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v8

    if-nez v8, :cond_0

    .line 505
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v8}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v8}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 506
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tel:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 508
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 509
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v8, v1}, Lcom/game/sdk/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 449
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_f
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getCommonUserInfosByType()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userList:Ljava/util/List;

    .line 451
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    .line 452
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userList:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    if-eqz v8, :cond_0

    .line 457
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    if-nez v8, :cond_10

    .line 458
    new-instance v8, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v10, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    .line 460
    :cond_10
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v8, p0}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->setCloseListener(Lcom/game/sdk/ui/adapter/UserLoginListAdapter$CloseListener;)V

    .line 462
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->accountLoginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 466
    .local v5, "pwidth":I
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-nez v8, :cond_11

    .line 467
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v10, "layout"

    const-string v11, "login_user_list"

    invoke-static {v9, v10, v11}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 468
    const/4 v10, 0x0

    .line 467
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 469
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "id"

    const-string v10, "lv_pw"

    invoke-static {v8, v9, v10}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 470
    .local v2, "lv_pw":Landroid/widget/ListView;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 471
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    new-instance v8, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;

    invoke-direct {v8, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 485
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    const/4 v10, 0x1

    invoke-direct {v8, v7, v5, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    .line 486
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 492
    .end local v2    # "lv_pw":Landroid/widget/ListView;
    .end local v7    # "view":Landroid/view/View;
    :goto_2
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 493
    neg-int v10, v5

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const/16 v12, 0x30

    invoke-static {v11, v12}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x0

    .line 492
    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 489
    :cond_11
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->initDataList(Ljava/util/List;)V

    .line 490
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v8}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 645
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 646
    const-string v0, "AccountLoginFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 292
    const-string v0, "AccountLoginFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public popWindowClose()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 638
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_0
    return-void
.end method
