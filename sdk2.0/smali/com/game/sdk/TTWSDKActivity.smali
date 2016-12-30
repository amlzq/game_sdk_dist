.class public Lcom/game/sdk/TTWSDKActivity;
.super Landroid/app/Activity;
.source "TTWSDKActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PATH:Ljava/lang/String;

.field public static instance:Lcom/game/sdk/TTWSDKActivity;


# instance fields
.field private btn_charger:Landroid/widget/Button;

.field private btn_login:Landroid/widget/Button;

.field private et_money:Landroid/widget/EditText;

.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field mReceiver01:Lcom/game/sdk/utils/MyServiceReceiver;

.field mReceiver02:Lcom/game/sdk/utils/MyServiceReceiver;

.field private tv_msg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6071GameBox2SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/TTWSDKActivity;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/game/sdk/TTWSDKActivity;->makeBaseDir()V

    .line 92
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/TTWSDKActivity;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static makeBaseDir()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/game/sdk/TTWSDKActivity;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->exitSDK()V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_login:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->isInitOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    const/4 v1, 0x0

    new-instance v2, Lcom/game/sdk/TTWSDKActivity$3;

    invoke-direct {v2, p0}, Lcom/game/sdk/TTWSDKActivity$3;-><init>(Lcom/game/sdk/TTWSDKActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/game/sdk/FYGameSDK;->login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_charger:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_charger:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->isInitOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->et_money:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "money_str":Ljava/lang/String;
    const-string v3, "0.01f"

    .line 126
    .local v3, "money":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    move-object v3, v9

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    const-string v2, "114811482001046"

    const-string v4, "1046"

    const-string v5, "\u9634\u9633\u5e08:640\u679a\u52fe\u7389"

    const-string v6, "\u9634\u9633\u5e08:640\u679a\u52fe\u7389"

    .line 131
    const-string v7, "20151125145012-1167-3835649893"

    new-instance v8, Lcom/game/sdk/TTWSDKActivity$4;

    invoke-direct {v8, p0}, Lcom/game/sdk/TTWSDKActivity$4;-><init>(Lcom/game/sdk/TTWSDKActivity;)V

    move-object v1, p0

    .line 130
    invoke-virtual/range {v0 .. v8}, Lcom/game/sdk/FYGameSDK;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sput-object p0, Lcom/game/sdk/TTWSDKActivity;->instance:Lcom/game/sdk/TTWSDKActivity;

    .line 49
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 51
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    new-instance v1, Lcom/game/sdk/TTWSDKActivity$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/TTWSDKActivity$1;-><init>(Lcom/game/sdk/TTWSDKActivity;)V

    .line 62
    new-instance v2, Lcom/game/sdk/TTWSDKActivity$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/TTWSDKActivity$2;-><init>(Lcom/game/sdk/TTWSDKActivity;)V

    .line 51
    invoke-virtual {v0, p0, v1, v2}, Lcom/game/sdk/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {p0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "ttw_sdk"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/TTWSDKActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "btn_login"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/TTWSDKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_login:Landroid/widget/Button;

    .line 71
    invoke-virtual {p0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "btn_charger"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/TTWSDKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_charger:Landroid/widget/Button;

    .line 72
    invoke-virtual {p0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "tv_msg"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/TTWSDKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->tv_msg:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/game/sdk/TTWSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "et_money"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/TTWSDKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->et_money:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->btn_charger:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->createFloatButton()V

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    return-void
.end method
