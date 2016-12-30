.class Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamePackageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/GamePackageDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field detailGetBtn:Landroid/widget/Button;

.field gameNameTv:Landroid/widget/TextView;

.field gamePackageDetailTv:Landroid/widget/TextView;

.field gamePackageIv:Landroid/widget/ImageView;

.field gamePackageSulplusTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/GamePackageDetailAdapter;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/game/sdk/adapter/GamePackageDetailAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
