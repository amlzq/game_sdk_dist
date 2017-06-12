.class Lcom/game/sdk/ui/ChargeRecordActivity$1;
.super Ljava/lang/Object;
.source "ChargeRecordActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/ChargeRecordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeRecordActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    # getter for: Lcom/game/sdk/ui/ChargeRecordActivity;->chargeSelectIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->access$2(Lcom/game/sdk/ui/ChargeRecordActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$1;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    const-string v2, "drawable"

    const-string v3, "select_down_icon"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 151
    return-void
.end method
