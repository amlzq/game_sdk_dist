.class Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GameCoinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/adapter/GameCoinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field gameMoneyTv:Landroid/widget/TextView;

.field gameNameTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/game/sdk/adapter/GameCoinAdapter;


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/GameCoinAdapter;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/game/sdk/adapter/GameCoinAdapter$ViewHolder;->this$0:Lcom/game/sdk/adapter/GameCoinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
