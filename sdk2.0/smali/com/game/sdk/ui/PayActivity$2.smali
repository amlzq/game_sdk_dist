.class Lcom/game/sdk/ui/PayActivity$2;
.super Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/PayActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/game/sdk/ui/PayActivity$2;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 298
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/PayActivity$NoDoubleClickListener;-><init>(Lcom/game/sdk/ui/PayActivity;)V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$2;->this$0:Lcom/game/sdk/ui/PayActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/PayActivity;->pay()V

    .line 303
    return-void
.end method
