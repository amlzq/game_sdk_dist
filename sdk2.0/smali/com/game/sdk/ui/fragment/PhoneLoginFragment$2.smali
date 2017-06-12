.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    .line 182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-virtual {v0, p1, p2}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getSmsInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 186
    return-void
.end method
