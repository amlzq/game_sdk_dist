.class Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamePackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/GamePackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field detailBtn:Landroid/widget/Button;

.field detailLayout:Landroid/widget/LinearLayout;

.field gameCountTv:Landroid/widget/TextView;

.field gameNameTv:Landroid/widget/TextView;

.field gamePackageIv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/game/sdk/adapter/GamePackageAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/GamePackageAdapter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/GamePackageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
