.class public Lcom/game/sdk/ui/fragment/AccountLoginFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;
    }
.end annotation


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private changeAccountTv:Landroid/widget/TextView;

.field private currentUserInfo:Lcom/game/sdk/domain/UserInfo;

.field private forgetTv:Landroid/widget/TextView;

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

.field private userNameEt:Landroid/widget/EditText;

.field private userinfoSelect:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Lcom/game/sdk/domain/UserInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userinfoSelect:Lcom/game/sdk/domain/UserInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    return-object v0
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
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 155
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserLoginInfoByType(I)Ljava/util/List;

    move-result-object v1

    .line 158
    :cond_1
    return-object v1

    .line 147
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v4, p1, :cond_3

    .line 148
    new-instance v2, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 149
    .local v2, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 150
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v4, v4, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v4, v2, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 167
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 176
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 177
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v1, Lcom/game/sdk/domain/UserInfo;

    .line 181
    .restart local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_1
    return-object v1

    .line 168
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v5, p1, :cond_1

    .line 169
    new-instance v3, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 170
    .local v3, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 171
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 172
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_2
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "account_login_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 188
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->initTheme()V

    .line 190
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->inflater:Landroid/view/LayoutInflater;

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 194
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->currentUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 196
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    goto :goto_0
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 208
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 209
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    :cond_0
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 213
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 214
    .local v5, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 215
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 216
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 218
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 219
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 220
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

    .line 222
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 223
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 224
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 225
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 236
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 237
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 238
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

    .line 240
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 244
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serverLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 247
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 248
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    :cond_4
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 252
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->registerIv:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    :cond_5
    return-void

    .line 227
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_6
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 228
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

    .line 231
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 232
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 114
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 115
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u8fdb\u5165\u6e38\u620f"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    .line 116
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 117
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 118
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 119
    const-string v0, "user_name_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    .line 120
    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    .line 121
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    .line 123
    const-string v0, "account_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLogo:Landroid/widget/ImageView;

    .line 124
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 125
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 126
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->serverLayout:Landroid/widget/RelativeLayout;

    .line 127
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->registerIv:Landroid/widget/ImageView;

    .line 129
    const-string v0, "forget_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->forgetTv:Landroid/widget/TextView;

    .line 130
    const-string v0, "more_account_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->forgetTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x6

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "change_account_tv"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 259
    const/4 v7, 0x2

    sput v7, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 260
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v7, v12}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "quick_register_layout"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 265
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "into_game_btn"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_b

    .line 269
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v7}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 270
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "username":Ljava/lang/String;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "password":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 282
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_5
    const-string v7, "[\u4e00-\u9fa5]"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 287
    .local v3, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v10, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 288
    :cond_6
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v10, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 292
    :cond_8
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d16\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :cond_9
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v7, :cond_a

    .line 297
    new-instance v7, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v7}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 300
    :cond_a
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v5, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 301
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v2, v7, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 303
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v7}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 306
    new-instance v7, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;

    invoke-direct {v7, p0, v11}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V

    new-array v8, v13, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "pat":Ljava/util/regex/Pattern;
    .end local v5    # "username":Ljava/lang/String;
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "more_account_layout"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_c

    .line 309
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 310
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    .line 354
    :cond_c
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const-string v8, "forget_tv"

    invoke-virtual {p0, v8}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->findIdByString(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 356
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 358
    .restart local v5    # "username":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 359
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v5    # "username":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0, v12}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getCommonUserInfosByType(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    .line 318
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 321
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    if-nez v7, :cond_e

    .line 322
    new-instance v7, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-direct {v7, v8, v9}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    .line 325
    :cond_e
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/16 v8, 0x154

    invoke-static {v7, v8}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    .line 326
    .local v4, "pwidth":I
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    if-nez v7, :cond_f

    .line 327
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v9, "layout"

    const-string v10, "login_user_list"

    invoke-static {v8, v9, v10}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 328
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "id"

    const-string v9, "lv_pw"

    invoke-static {v7, v8, v9}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 329
    .local v1, "lv_pw":Landroid/widget/ListView;
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 330
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    new-instance v7, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;

    invoke-direct {v7, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$1;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-direct {v7, v6, v4, v8, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    .line 344
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 350
    .end local v1    # "lv_pw":Landroid/widget/ListView;
    .end local v6    # "view":Landroid/view/View;
    :goto_2
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_select_user:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->moreAccountLayout:Landroid/widget/LinearLayout;

    .line 351
    neg-int v9, v4

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v10

    add-int/2addr v9, v10

    .line 350
    invoke-virtual {v7, v8, v9, v13}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 347
    :cond_f
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->userLoginInfos:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->initDataList(Ljava/util/List;)V

    .line 348
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->pw_adapter:Lcom/game/sdk/ui/adapter/UserLoginListAdapter;

    invoke-virtual {v7}, Lcom/game/sdk/ui/adapter/UserLoginListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 363
    .end local v4    # "pwidth":I
    .restart local v5    # "username":Ljava/lang/String;
    :cond_10
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoByName(Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    .line 364
    .local v0, "loginUserInfo":Lcom/game/sdk/domain/UserInfo;
    if-eqz v0, :cond_13

    .line 365
    iget v7, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v7, v12, :cond_11

    .line 366
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v7, v12}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0

    .line 368
    :cond_11
    iget-object v7, v0, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 369
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->passWordEt:Landroid/widget/EditText;

    iget-object v8, v0, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 371
    :cond_12
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8d26\u53f7\u672a\u7ed1\u5b9a\u624b\u673a\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u627e\u56de"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_13
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v8, "\u8d26\u53f7\u4e0d\u5b58\u5728\uff0c\u8bf7\u6ce8\u518c"

    invoke-static {v7, v8}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v7, v12}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto/16 :goto_0
.end method
