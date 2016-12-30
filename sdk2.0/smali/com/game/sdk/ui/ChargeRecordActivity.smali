.class public Lcom/game/sdk/ui/ChargeRecordActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "ChargeRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

.field chargeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/game/sdk/ui/ChargeRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/ChargeRecordActivity$1;-><init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ChargeRecordActivity;)Lcom/game/sdk/adapter/ChargeRecordAdapter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ChargeRecordActivity;)Lcom/game/sdk/engin/ChargeRecordEngin;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/ChargeRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "activity_charge_record"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordList:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/game/sdk/adapter/ChargeRecordAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/adapter/ChargeRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->adapter:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    new-instance v0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;-><init>(Lcom/game/sdk/ui/ChargeRecordActivity;Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 61
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->backIv:Landroid/widget/ImageView;

    .line 62
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "charge_record_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const-string v0, "charge_record_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->listView:Landroid/widget/ListView;

    .line 65
    invoke-static {p0}, Lcom/game/sdk/engin/ChargeRecordEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/ChargeRecordEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/game/sdk/ui/ChargeRecordActivity;->finish()V

    .line 91
    :cond_0
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
