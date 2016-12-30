.class public abstract Lcom/unionpay/mobile/android/plugin/BaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/unionpay/mobile/android/plugin/a;
.implements Lcom/unionpay/mobile/android/plugin/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/plugin/BaseActivity$a;
    }
.end annotation


# static fields
.field public static a:[[Ljava/lang/String;

.field public static b:[Landroid/content/IntentFilter;

.field private static g:I


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/nocard/views/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/unionpay/mobile/android/nocard/views/l;

.field private e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

.field private f:Lcom/unionpay/mobile/android/widgets/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:I

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Landroid/nfc/tech/NfcV;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Landroid/nfc/tech/NfcF;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:[[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    const-string v4, "*/*"

    invoke-direct {v2, v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:[Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-class v1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    goto :goto_0

    :cond_2
    const-class v1, Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/b;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->h()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/unionpay/mobile/android/nocard/views/b;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()V

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    sput-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    sget v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/resource/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v1, v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v1, v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "uppay"

    const-string v1, "PayActivityEx.onCreate() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/languages/c;->a()V

    invoke-static {p0}, Lcom/unionpay/mobile/android/global/a;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c()Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;-><init>(Lcom/unionpay/mobile/android/plugin/BaseActivity;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/m;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b(I)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/l;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:I

    const-string v0, "uppay"

    const-string v1, "PayActivityEx.onCreate() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/b;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->l()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->b()V

    :cond_0
    return-void
.end method
