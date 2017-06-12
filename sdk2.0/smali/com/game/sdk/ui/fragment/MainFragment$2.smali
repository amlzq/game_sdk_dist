.class Lcom/game/sdk/ui/fragment/MainFragment$2;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$2;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$2;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    .line 300
    const-string v1, "is_auto_login"

    .line 299
    invoke-virtual {v0, v1, p2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    return-void
.end method
