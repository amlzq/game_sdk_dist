.class public Lcom/game/sdk/ui/UserInfoActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;,
        Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;,
        Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private birthLayout:Landroid/widget/RelativeLayout;

.field private birthTv:Landroid/widget/TextView;

.field private datelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field private emailLayout:Landroid/widget/RelativeLayout;

.field private emailTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field headBitmap:Landroid/graphics/Bitmap;

.field private headLayout:Landroid/widget/RelativeLayout;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mobileLayout:Landroid/widget/RelativeLayout;

.field private mobileTv:Landroid/widget/TextView;

.field private month:I

.field private nickNameLayout:Landroid/widget/RelativeLayout;

.field private nicknNameTv:Landroid/widget/TextView;

.field photo:Landroid/graphics/Bitmap;

.field private qqLayout:Landroid/widget/RelativeLayout;

.field private qqTv:Landroid/widget/TextView;

.field private sexLayout:Landroid/widget/RelativeLayout;

.field private sexTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field updateDialog:Lcom/game/sdk/view/CustomDialog;

.field private updateUserInfo:Lcom/game/sdk/domain/UserInfo;

.field private updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

.field private userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

.field private userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    .line 93
    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->headBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-instance v0, Lcom/game/sdk/ui/UserInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/UserInfoActivity$1;-><init>(Lcom/game/sdk/ui/UserInfoActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->handler:Landroid/os/Handler;

    .line 320
    new-instance v0, Lcom/game/sdk/ui/UserInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/UserInfoActivity$2;-><init>(Lcom/game/sdk/ui/UserInfoActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->datelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 49
    return-void
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/UserInfoActivity;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/game/sdk/ui/UserInfoActivity;->month:I

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/UserInfoActivity;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/game/sdk/ui/UserInfoActivity;->day:I

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/UserInfoActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->year:I

    return v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/UserInfoActivity;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->month:I

    return v0
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/UserInfoActivity;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->day:I

    return v0
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/engin/UpdateUserInfoEngin;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-void
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/engin/UpdateUserInfoEngin;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-object v0
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/engin/UserInfoEngin;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    return-object v0
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/view/CustomRoundImageView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->nicknNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->sexTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->birthTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->mobileTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->emailTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity;->qqTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/UserInfoActivity;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/game/sdk/ui/UserInfoActivity;->year:I

    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "fysdk_activity_user_info"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;-><init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 152
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 158
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 159
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u6b63\u5728\u4fee\u6539"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 160
    new-instance v2, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 162
    const-string v2, "title_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->titleTv:Landroid/widget/TextView;

    .line 163
    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->backIv:Landroid/widget/ImageView;

    .line 164
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->titleTv:Landroid/widget/TextView;

    const-string v3, "update_user_info_text"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/UserInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const-string v2, "user_head_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/view/CustomRoundImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    .line 167
    const-string v2, "nick_name_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->nicknNameTv:Landroid/widget/TextView;

    .line 168
    const-string v2, "sex_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->sexTv:Landroid/widget/TextView;

    .line 169
    const-string v2, "birth_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->birthTv:Landroid/widget/TextView;

    .line 170
    const-string v2, "mobile_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->mobileTv:Landroid/widget/TextView;

    .line 171
    const-string v2, "email_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->emailTv:Landroid/widget/TextView;

    .line 172
    const-string v2, "qq_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->qqTv:Landroid/widget/TextView;

    .line 174
    const-string v2, "head_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->headLayout:Landroid/widget/RelativeLayout;

    .line 175
    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->nickNameLayout:Landroid/widget/RelativeLayout;

    .line 176
    const-string v2, "sex_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->sexLayout:Landroid/widget/RelativeLayout;

    .line 177
    const-string v2, "birth_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->birthLayout:Landroid/widget/RelativeLayout;

    .line 178
    const-string v2, "mobile_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->mobileLayout:Landroid/widget/RelativeLayout;

    .line 179
    const-string v2, "email_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->emailLayout:Landroid/widget/RelativeLayout;

    .line 180
    const-string v2, "qq_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->qqLayout:Landroid/widget/RelativeLayout;

    .line 182
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->headLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->nickNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->sexLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->birthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->mobileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->emailLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->qqLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v2, Lcom/game/sdk/engin/UserInfoEngin;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/engin/UserInfoEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    .line 193
    const-string v0, ""

    .line 194
    .local v0, "birth":Ljava/lang/String;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v2, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    .line 199
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 200
    .local v1, "mycalendar":Ljava/util/Calendar;
    sget-object v2, Lcom/game/sdk/utils/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v2}, Lcom/game/sdk/utils/TimeUtils;->getDateTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->year:I

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->month:I

    .line 203
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/game/sdk/ui/UserInfoActivity;->day:I

    .line 204
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 382
    invoke-super/range {p0 .. p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    if-eqz p3, :cond_5

    .line 386
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 387
    .local v11, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    .line 388
    if-eqz v11, :cond_0

    .line 389
    const-string v1, "data"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    .line 392
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 395
    .local v2, "selectedImage":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 396
    .local v3, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/ui/UserInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 397
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v16, ""

    .line 398
    .local v16, "picturePath":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 399
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 401
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v8    # "columnIndex":I
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 407
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v13, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v1, "crop"

    const-string v4, "true"

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v1, "aspectX"

    const/4 v4, 0x1

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v1, "aspectY"

    const/4 v4, 0x1

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v1, "outputX"

    const/16 v4, 0xa0

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v1, "outputY"

    const/16 v4, 0xa0

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v1, "return-data"

    const/4 v4, 0x1

    invoke-virtual {v13, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 476
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "picturePath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 404
    .restart local v2    # "selectedImage":Landroid/net/Uri;
    .restart local v3    # "filePathColumn":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v16    # "picturePath":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 418
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    .line 421
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v16    # "picturePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 422
    const-string v1, "\u83b7\u53d6\u56fe\u7247\u5931\u8d25"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    .end local v11    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 467
    .local v10, "e":Ljava/lang/Exception;
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 468
    .local v14, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v14, Landroid/os/Message;->what:I

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "msg":Landroid/os/Message;
    :cond_5
    :goto_2
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 474
    new-instance v1, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;-><init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 426
    .restart local v11    # "extras":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->photo:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 430
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 431
    .local v7, "byteArray":[B
    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    .line 432
    .local v18, "streamStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "data:image/png;base64,"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 434
    .local v12, "face":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/game/sdk/ui/UserInfoActivity;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v12, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    .line 437
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v15, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user_id"

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-interface {v15, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v1, "face"

    invoke-interface {v15, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static/range {p0 .. p0}, Lcom/game/sdk/engin/UpdateAvaterEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/UpdateAvaterEngin;

    move-result-object v1

    const-class v4, Lcom/game/sdk/domain/UpdateInfo;

    new-instance v5, Lcom/game/sdk/ui/UserInfoActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/game/sdk/ui/UserInfoActivity$3;-><init>(Lcom/game/sdk/ui/UserInfoActivity;)V

    invoke-virtual {v1, v4, v15, v5}, Lcom/game/sdk/engin/UpdateAvaterEngin;->agetResultInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/game/sdk/ui/UserInfoActivity;->finish()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "head_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/game/sdk/ui/UserInfoActivity;->updateAvatar()V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 245
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "infoType"

    const-string v2, "nickname"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 251
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "email_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 252
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "infoType"

    const-string v2, "email"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 258
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "qq_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 259
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "infoType"

    const-string v2, "qq"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 265
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "sex_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 266
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "infoType"

    const-string v2, "sex"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 271
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "birth_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 272
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v2, 0x3

    .line 273
    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity;->datelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/game/sdk/ui/UserInfoActivity;->year:I

    iget v5, p0, Lcom/game/sdk/ui/UserInfoActivity;->month:I

    iget v6, p0, Lcom/game/sdk/ui/UserInfoActivity;->day:I

    move-object v1, p0

    .line 272
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 274
    .local v0, "dateDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 277
    .end local v0    # "dateDialog":Landroid/app/DatePickerDialog;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "mobile_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/UserInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 278
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7, v3}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
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
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 230
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 223
    const-string v0, "UserInfoActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 224
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 214
    const-string v0, "UserInfoActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 217
    const-string v0, "open_user_center_page"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public updateAvatar()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/game/sdk/ui/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method
