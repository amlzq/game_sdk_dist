.class Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ScoreStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/ScoreStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field exchangeBtn:Landroid/widget/Button;

.field gameNameTv:Landroid/widget/TextView;

.field scoreGameIv:Landroid/widget/ImageView;

.field scoreTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/ScoreStoreAdapter;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/game/sdk/adapter/ScoreStoreAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
